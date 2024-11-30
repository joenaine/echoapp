import 'dart:developer';

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
  TabController? _tabController;
  late final ScrollController _scrollController;
  int? _currentCategoryId;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    _initializeBlocs();
    getIt<FToastService>().initFToast(context);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      // Trigger infinite scrolling when reaching the end of the list
      context.read<PostsBloc>().add(const PostsEvent.loadMore());
    }
  }

  void _initializeBlocs() {
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
    context.read<PostsBloc>().add(const PostsEvent.fetch());
    context.read<PostFavoritesBloc>().add(const PostFavoritesEvent.fetch());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController?.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0.0, // Scroll to the top
        duration:
            const Duration(milliseconds: 300), // Smooth scrolling duration
        curve: Curves.easeInOut, // Smooth scrolling curve
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (TapUpDetails details) {
        // Get screen height and tap position
        // final screenHeight = MediaQuery.of(context).size.height;
        // final tapPosition = details.globalPosition.dy;

        // // If the tap is in the top 10% of the screen, scroll to top
        // if (tapPosition <= screenHeight * 0.1) {
        //   _scrollToTop();
        // }
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppColors.backgroundBlue,
        // appBar: _buildAppBar(),
        drawer: _buildDrawer(),
        body: _buildBody(),
      ),
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: const Text('Категории', style: AppStyles.s16w700),
            trailing: const Icon(CupertinoIcons.forward),
            onTap: () {
              context.router.push(const CategoriesRoute());
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Теги', style: AppStyles.s16w700),
            trailing: const Icon(CupertinoIcons.forward),
            onTap: () {
              context.router.push(const TagsRoute());
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Личности', style: AppStyles.s16w700),
            trailing: const Icon(CupertinoIcons.forward),
            onTap: () {
              context.router.push(const PersonalitiesRoute());
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 200)
        ],
      ),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status == Status.success && state.categories != null) {
          List<CategoryModel> categories = state.categories!;

          return CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                backgroundColor: AppColors.white,
                shadowColor: AppColors.white,
                foregroundColor: AppColors.white,
                surfaceTintColor: AppColors.white,
                floating: true,
                centerTitle: false,
                leading: IconButton(
                  onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  icon: SvgPicture.asset(AppAssets.svg.menu),
                ),
                title: const Text('Лента', style: AppStyles.s22w700),
                actions: [
                  IconButton(
                      onPressed: () {
                        context.router.push(const SearchRoute());
                      },
                      icon: SvgPicture.asset(AppAssets.svg.loop,
                          color: AppColors.black)),
                  IconButton(
                    onPressed: () => context.router.push(const FilterRoute()),
                    icon: const Icon(Icons.filter_list_alt),
                  ),
                ],
              ),
              BuildCategorySelector(
                categories: categories,
                selectedCategoryIndex: 0,
              ),
              _buildPostsListView(categories)
            ],
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _buildPostsListView(List<CategoryModel> categories) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        final posts = state.postModel?.items ?? [];
        final hasMore = state.hasMore;

        if (state.status == Status.success && posts.isNotEmpty) {
          return SliverList.builder(
            itemCount:
                posts.length + (hasMore ? 1 : 0), // Add 1 for loading indicator
            itemBuilder: (BuildContext context, int idx) {
              if (idx < posts.length) {
                final post = posts[idx];
                return GestureDetector(
                  onTap: () {
                    context
                        .read<PostDetailBloc>()
                        .add(PostDetailEvent.fetch(id: post.id));
                    context.router.push(PostDetailsRoute(title: post.title));
                  },
                  child: PostItemWidget(post: post),
                );
              } else {
                return hasMore
                    ? const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : const SizedBox.shrink();
              }
            },
          );
        } else if (state.status == Status.success && posts.isEmpty) {
          return const SliverFillRemaining(
            child: Center(child: Text('Нет доступных постов.')),
          );
        } else if (state.status == Status.loading) {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        } else {
          return SliverFillRemaining(
            child: Center(
              child: Text(
                state.error ?? 'Ошибка загрузки',
                style: AppStyles.s16w500,
                textAlign: TextAlign.center,
              ),
            ),
          );
        }
      },
    );
  }
}

class BuildCategorySelector extends StatelessWidget {
  const BuildCategorySelector(
      {super.key, required this.categories, this.selectedCategoryIndex = 0});
  final int? selectedCategoryIndex;

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: CustomTabHeader(
        Container(
          color: AppColors.white,
          child: BlocBuilder<PostsBloc, PostsState>(
            builder: (context, state) {
              return ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  final category = categories[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                        color: state.categoryId == category.id
                            ? AppColors.black
                            : null,
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 8),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black54),
                            borderRadius: BorderRadius.circular(12)),
                        onPressed: () {
                          context
                              .read<PostsBloc>()
                              .add(PostsEvent.fetchByCategory(id: category.id));
                        },
                        child: Text(category.name ?? '',
                            style: AppStyles.s12w400.copyWith(
                                color: state.categoryId == category.id
                                    ? AppColors.white
                                    : Colors.black87))),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
