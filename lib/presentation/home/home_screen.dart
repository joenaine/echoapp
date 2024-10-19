import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/categories/categories_bloc.dart';
import 'package:echoapp/application/posts/posts_bloc.dart';
import 'package:echoapp/core/constants/app_assets.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/services/ftoast_service.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/injection.dart';
import 'package:echoapp/presentation/common_widgets/custom_tab_header_widget.dart';
import 'package:echoapp/presentation/home/widgets/custom_tab_header.dart';
import 'package:echoapp/presentation/routes/router.dart';
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
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(const CategoriesEvent.fetch());
    context.read<PostsBloc>().add(const PostsEvent.fetch());
    getIt<FToastService>().initFToast(context);

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        context.read<PostsBloc>().add(const PostsEvent.loadMore());
      }
    });
  }

  TabController? tabController;

  void onChangePage({required int id}) {
    context.read<PostsBloc>().add(PostsEvent.fetchByCategory(id: id));
  }

  int? categoryId;

  @override
  void dispose() {
    tabController!.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
        centerTitle: false,
        // leading: IconButton(
        //     onPressed: () {}, icon: SvgPicture.asset(AppAssets.svg.menu)),
        title: const Text(
          'Лента',
          style: AppStyles.s22w700,
        ),
      ),
      body: BlocBuilder<CategoriesBloc, CategoriesState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          if (state.status == Status.success) {
            var cats = state.categories;
            tabController =
                TabController(length: cats!.length + 1, vsync: this);
            // Add listener for tab changes
            tabController?.addListener(() {
              if (!tabController!.indexIsChanging) {
                // Get current tab index
                int currentIndex = tabController!.index;
                print("Current tab index: $currentIndex");

                // If currentIndex is greater than 0, it means a category tab is selected
                if (currentIndex > 0) {
                  // Adjust for index being 1 greater than the categories (due to "Все" tab)
                  onChangePage(
                      id: cats[currentIndex - 1].id!); // Correct index access
                } else {
                  // Handle the "Все" tab (index 0)
                  context.read<PostsBloc>().add(const PostsEvent.fetch());
                }
              }
            });
            return BlocConsumer<PostsBloc, PostsState>(
              listener: (context, state) {
                if (state.status == Status.error) {
                  FlushbarHelper.createError(message: state.error ?? '')
                      .show(context);
                }
              },
              buildWhen: (previous, current) =>
                  previous.status != current.status,
              builder: (context, state) {
                var posts = state.postModel?.items;

                return NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            Container(
                              color: AppColors.white,
                              child: GestureDetector(
                                onTap: () {
                                  context.router.push(const SearchRoute());
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  padding: const EdgeInsets.all(16.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.backgroundLight),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(AppAssets.svg.loop),
                                      const SizedBox(width: 8),
                                      Text('Спросите нас...',
                                          style: AppStyles.s12w500.copyWith(
                                              color: AppColors.lightGrey))
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SliverPersistentHeader(
                        pinned: true,
                        floating: true,
                        delegate: CustomTabHeader(CustomTabHeaderWidget(
                            controller: tabController,
                            tabCategories: [
                              'Все',
                              ...cats.map((e) => e.name!)
                            ])),
                      )
                    ];
                  },
                  body: TabBarView(controller: tabController, children: [
                    state.status == Status.success
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: posts?.length,
                            itemBuilder: (BuildContext context, int index) {
                              final post = posts?[index];
                              return Container(
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(post?.channel ?? '',
                                        style: AppStyles.s16w700),
                                    if (post?.categories != null) ...[
                                      ...post!.categories!
                                          .asMap()
                                          .map((i, value) {
                                        return MapEntry(
                                            i,
                                            Row(
                                              children: [
                                                Text(value,
                                                    style: AppStyles.s12w400
                                                        .copyWith(
                                                            color: AppColors
                                                                .lightGrey)),
                                                if (i > 1 &&
                                                    i !=
                                                        post.categories?.length)
                                                  const Text(' • '),
                                              ],
                                            ));
                                      }).values
                                    ],
                                    const SizedBox(height: 12),
                                    Text(post?.postSummary ?? '',
                                        style: AppStyles.s12w600
                                            .copyWith(color: AppColors.black)),
                                    const SizedBox(height: 12),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(AppAssets.svg.view,
                                                color: AppColors.lightGrey),
                                            const SizedBox(width: 4),
                                            Text(post!.views.toString(),
                                                style: AppStyles.s12w600)
                                          ],
                                        ),
                                        BlocBuilder<PostsBloc, PostsState>(
                                          builder: (context, state) {
                                            return GestureDetector(
                                              onTap: () {
                                                context.read<PostsBloc>().add(
                                                    PostsEvent.addPost(
                                                        id: post.id!));
                                              },
                                              child: Container(
                                                  padding:
                                                      const EdgeInsets.all(12),
                                                  decoration: BoxDecoration(
                                                      color: state
                                                              .favouritePosts!
                                                              .contains(
                                                                  post.id!)
                                                          ? AppColors.black
                                                          : AppColors
                                                              .backgroundBlue,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: SvgPicture.asset(
                                                      AppAssets.svg.savePlus)),
                                            );
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          )
                        : const Center(child: CircularProgressIndicator()),
                    ...cats.asMap().map((key, value) {
                      return MapEntry(
                        key,
                        state.status == Status.success
                            ? ListView.builder(
                                shrinkWrap: true,
                                itemCount: posts?.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final post = posts?[index];
                                  return Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    padding: const EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(post?.channel ?? '',
                                            style: AppStyles.s16w700),
                                        if (post?.categories != null) ...[
                                          ...post!.categories!
                                              .asMap()
                                              .map((i, value) {
                                            return MapEntry(
                                              i,
                                              Row(
                                                children: [
                                                  Text(value,
                                                      style: AppStyles.s12w400
                                                          .copyWith(
                                                              color: AppColors
                                                                  .lightGrey)),
                                                  if (i > 1 &&
                                                      i !=
                                                          post.categories
                                                              ?.length)
                                                    const Text(' • '),
                                                ],
                                              ),
                                            );
                                          }).values
                                        ],
                                        const SizedBox(height: 12),
                                        Text(posts?[index].postSummary ?? '',
                                            style: AppStyles.s12w600.copyWith(
                                                color: AppColors.black)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                    AppAssets.svg.view,
                                                    color: AppColors.lightGrey),
                                                const SizedBox(width: 4),
                                                Text(post!.views.toString(),
                                                    style: AppStyles.s12w600)
                                              ],
                                            ),
                                            BlocBuilder<PostsBloc, PostsState>(
                                              builder: (context, state) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    context
                                                        .read<PostsBloc>()
                                                        .add(PostsEvent.addPost(
                                                            id: post.id!));
                                                  },
                                                  child: Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12),
                                                      decoration: BoxDecoration(
                                                          color: state
                                                                  .favouritePosts!
                                                                  .contains(
                                                                      post.id!)
                                                              ? AppColors.black
                                                              : AppColors
                                                                  .backgroundBlue,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20)),
                                                      child: SvgPicture.asset(
                                                          AppAssets
                                                              .svg.savePlus)),
                                                );
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              )
                            : const Center(child: CircularProgressIndicator()),
                      );
                    }).values,
                  ]),
                );
              },
            );
          }

          return Container(
              alignment: Alignment.center,
              color: AppColors.white,
              child: const CircularProgressIndicator());
        },
      ),
    );
  }
}
