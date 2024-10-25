import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/categories/categories_bloc.dart';
import 'package:echoapp/application/posts/post_detail/post_detail_bloc.dart';
import 'package:echoapp/application/posts/post_favorites/post_favorites_bloc.dart';
import 'package:echoapp/application/posts/posts_bloc.dart';
import 'package:echoapp/core/constants/app_assets.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/domain/category/category_model.dart';
import 'package:echoapp/injection.dart';
import 'package:echoapp/presentation/common_widgets/custom_tab_header_widget.dart';
import 'package:echoapp/presentation/home/widgets/custom_tab_header.dart';
import 'package:echoapp/presentation/home/widgets/post_item_widget.dart';
import 'package:echoapp/presentation/routes/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? tabController;
  List<ScrollController> _scrollControllers = [];
  int? currentCategoryId;

  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
    context.read<PostsBloc>().add(const PostsEvent.fetch());
    context.read<PostFavoritesBloc>().add(const PostFavoritesEvent.fetch());
    getIt<FToastService>().initFToast(context);
  }

  @override
  void dispose() {
    tabController?.dispose();
    for (var controller in _scrollControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void onTabChange(int index, List<CategoryModel> categories) {
    if (index == 0) {
      // "Все" tab
      currentCategoryId = null;
      context.read<PostsBloc>().add(const PostsEvent.fetch());
    } else {
      // Category-specific tab
      currentCategoryId = categories[index - 1].id;
      context
          .read<PostsBloc>()
          .add(PostsEvent.fetchByCategory(id: currentCategoryId!));
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
          centerTitle: false,
          leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              icon: SvgPicture.asset(AppAssets.svg.menu)),
          title: const Text('Лента', style: AppStyles.s22w700)),
      drawer: Drawer(
        backgroundColor: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: const Text(
                'Категории',
                style: AppStyles.s16w700,
              ),
              trailing: const Icon(CupertinoIcons.forward),
              onTap: () {
                context.router.push(const CategoriesRoute());
                Navigator.pop(context); // Close the drawer
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Теги', style: AppStyles.s16w700),
              trailing: const Icon(CupertinoIcons.forward),
              onTap: () {
                context.router.push(const TagsRoute());
                Navigator.pop(context); // Close the drawer
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Личности', style: AppStyles.s16w700),
              trailing: const Icon(CupertinoIcons.forward),
              onTap: () {
                context.router.push(const PersonalitiesRoute());
                Navigator.pop(context); // Close the drawer
              },
            ),
            const SizedBox(height: 200)
          ],
        ),
      ),
      body: BlocBuilder<CategoriesBloc, CategoriesState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          if (state.status == Status.success) {
            var cats = state.categories;

            // Initialize TabController and ScrollControllers
            tabController =
                TabController(length: cats!.length + 1, vsync: this);
            tabController!.addListener(() {
              if (!tabController!.indexIsChanging) {
                onTabChange(tabController!.index, cats);
              }
            });

            _scrollControllers = List.generate(
              cats.length + 1,
              (index) => ScrollController()
                ..addListener(() {
                  if (_scrollControllers[index].position.pixels >=
                      _scrollControllers[index].position.maxScrollExtent) {
                    context.read<PostsBloc>().add(const PostsEvent.loadMore());
                  }
                }),
            );

            return NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: GestureDetector(
                      onTap: () {
                        context.router.push(const SearchRoute());
                      },
                      child: Container(
                        color: AppColors.white,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16.0),
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.backgroundLight,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(AppAssets.svg.loop),
                              const SizedBox(width: 8),
                              Text(
                                'Спросите нас...',
                                style: AppStyles.s12w500
                                    .copyWith(color: AppColors.lightGrey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    floating: true,
                    delegate: CustomTabHeader(
                      CustomTabHeaderWidget(
                        controller: tabController,
                        tabCategories: ['Все', ...cats.map((e) => e.name!)],
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(
                controller: tabController,
                children: [
                  // "Все" tab content
                  BlocBuilder<PostsBloc, PostsState>(
                    builder: (context, state) {
                      var posts = state.postModel?.items ?? [];
                      return Scrollbar(
                        controller: _scrollControllers[0],
                        child: ListView.builder(
                          padding: const EdgeInsets.only(bottom: 170),
                          controller: _scrollControllers[0],
                          itemCount:
                              posts.length + 1, // Add 1 for loading indicator
                          itemBuilder: (BuildContext context, int index) {
                            if (index < posts.length) {
                              final post = posts[index];
                              return GestureDetector(
                                  onTap: () {
                                    context.read<PostDetailBloc>().add(
                                        PostDetailEvent.fetch(id: post.id));
                                    context.router
                                        .push(const PostDetailsRoute());
                                  },
                                  child: PostItemWidget(post: post));
                            } else {
                              return state.hasMore
                                  ? const Padding(
                                      padding: EdgeInsets.only(top: 20.0),
                                      child: Center(
                                          child: CircularProgressIndicator()),
                                    )
                                  : const SizedBox.shrink();
                            }
                          },
                        ),
                      );
                    },
                  ),
                  // Category-specific tab content
                  ...cats.asMap().entries.map((entry) {
                    final index = entry.key + 1;
                    return BlocBuilder<PostsBloc, PostsState>(
                      builder: (context, state) {
                        var posts = state.postModel?.items ?? [];
                        return ListView.builder(
                          padding: const EdgeInsets.only(bottom: 120),
                          controller: _scrollControllers[index],
                          itemCount:
                              posts.length + 1, // Add 1 for loading indicator
                          itemBuilder: (BuildContext context, int index) {
                            if (index < posts.length) {
                              final post = posts[index];
                              return GestureDetector(
                                  onTap: () {
                                    context.read<PostDetailBloc>().add(
                                        PostDetailEvent.fetch(id: post.id));
                                    context.router
                                        .push(const PostDetailsRoute());
                                  },
                                  child: PostItemWidget(post: post));
                            } else {
                              return state.hasMore
                                  ? const Center(
                                      child: CircularProgressIndicator())
                                  : const SizedBox.shrink();
                            }
                          },
                        );
                      },
                    );
                  }),
                ],
              ),
            );
          }

          return const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
