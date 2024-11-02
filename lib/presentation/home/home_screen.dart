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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  List<ScrollController> _scrollControllers = [];
  int? _currentCategoryId;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _initializeControllers();
    _initializeBlocs();
    getIt<FToastService>().initFToast(context);
  }

  void _initializeControllers() {
    // Set initial ScrollControllers for each tab
    _scrollControllers = List.generate(
      1, // Initial "Все" tab
      (index) => ScrollController()
        ..addListener(() {
          if (_scrollControllers[index].position.pixels >=
              _scrollControllers[index].position.maxScrollExtent) {
            context.read<PostsBloc>().add(const PostsEvent.loadMore());
          }
        }),
    );
  }

  void _initializeBlocs() {
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
    context.read<PostsBloc>().add(const PostsEvent.fetch());
    context.read<PostFavoritesBloc>().add(const PostFavoritesEvent.fetch());
  }

  @override
  void dispose() {
    _tabController?.dispose();
    for (var controller in _scrollControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onTabChange(int index, List<CategoryModel> categories) {
    if (index == 0) {
      _currentCategoryId = null;
      context.read<PostsBloc>().add(const PostsEvent.fetch());
    } else {
      _currentCategoryId = categories[index - 1].id;
      context
          .read<PostsBloc>()
          .add(PostsEvent.fetchByCategory(id: _currentCategoryId!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.backgroundBlue,
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: false,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: SvgPicture.asset(AppAssets.svg.menu),
      ),
      title: const Text('Лента', style: AppStyles.s22w700),
      actions: [
        IconButton(
          onPressed: () => context.router.push(const FilterRoute()),
          icon: const Icon(Icons.filter_list_alt),
        ),
      ],
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
          final categories = state.categories!;
          _initializeTabController(categories);

          return NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(child: _buildSearchBar()),
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: CustomTabHeader(
                    CustomTabHeaderWidget(
                      controller: _tabController,
                      tabCategories: ['Все', ...categories.map((e) => e.name!)],
                    ),
                  ),
                ),
              ];
            },
            body: _buildTabBarView(categories),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  void _initializeTabController(List<CategoryModel> categories) {
    _tabController ??=
        TabController(length: categories.length + 1, vsync: this);
    _tabController!.addListener(() {
      if (!_tabController!.indexIsChanging) {
        _onTabChange(_tabController!.index, categories);
      }
    });

    // Initialize additional ScrollControllers for each category tab
    if (_scrollControllers.length < categories.length + 1) {
      _scrollControllers = List.generate(
        categories.length + 1,
        (index) => ScrollController()
          ..addListener(() {
            if (_scrollControllers[index].position.pixels >=
                _scrollControllers[index].position.maxScrollExtent) {
              context.read<PostsBloc>().add(const PostsEvent.loadMore());
            }
          }),
      );
    }
  }

  Widget _buildSearchBar() {
    return GestureDetector(
      onTap: () => context.router.push(const SearchRoute()),
      child: Container(
        color: AppColors.white,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.backgroundLight, // Set color inside BoxDecoration
          ),
          child: Row(
            children: [
              SvgPicture.asset(AppAssets.svg.loop),
              const SizedBox(width: 8),
              Text(
                'Поиск новостей...',
                style: AppStyles.s12w500.copyWith(color: AppColors.lightGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabBarView(List<CategoryModel> categories) {
    return TabBarView(
      controller: _tabController,
      children: List.generate(categories.length + 1, (index) {
        return _buildPostsListView(index);
      }),
    );
  }

  Widget _buildPostsListView(int index) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        final posts = state.postModel?.items ?? [];
        final hasMore = state.hasMore;

        if (state.status == Status.success && posts.isNotEmpty) {
          return ListView.builder(
            padding: const EdgeInsets.only(bottom: 120),
            controller: _scrollControllers[index],
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
                // Display loading indicator only if more items are expected
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
          // Handle empty list case
          return const Center(child: Text('Нет доступных постов.'));
        } else if (state.status == Status.loading) {
          // Show loading indicator during initial load
          return const Center(child: CircularProgressIndicator());
        } else {
          // Handle error or any other state
          return Center(
              child: Text(
            state.error ?? '',
            style: AppStyles.s16w500,
            textAlign: TextAlign.center,
          ));
        }
      },
    );
  }
}
