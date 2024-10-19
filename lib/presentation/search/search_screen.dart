import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/posts/posts_bloc.dart';
import 'package:echoapp/core/constants/app_assets.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/presentation/common_widgets/app_hide_heyboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppHideKeyboardWidget(
      child: Scaffold(
        backgroundColor: AppColors.backgroundBlue,
        appBar: AppBar(
          title: TextFormField(
            controller: _searchController,
            decoration: InputDecoration(
                hintStyle:
                    AppStyles.s14w400.copyWith(color: AppColors.lightGrey),
                hintText: 'Спросите о чем угодно',
                border: InputBorder.none),
            onChanged: (value) {
              context
                  .read<PostsBloc>()
                  .add(PostsEvent.searchPost(search: value));
            },
          ),
        ),
        body: BlocConsumer<PostsBloc, PostsState>(
          listener: (context, state) {
            if (state.status == Status.error) {
              FlushbarHelper.createError(message: state.error ?? '')
                  .show(context);
            }
          },
          builder: (context, state) {
            if (state.status == Status.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status == Status.success) {
              final posts = state.searchPostModel?.items;
              if (posts == null) {
                return const Center(child: Text('No results found'));
              } else {
                return ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (BuildContext context, int index) {
                    final post = posts[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(post.channel ?? '', style: AppStyles.s16w700),
                          if (post.categories != null) ...[
                            ...post.categories!.asMap().map((i, value) {
                              return MapEntry(
                                  i,
                                  Row(
                                    children: [
                                      Text(value,
                                          style: AppStyles.s12w400.copyWith(
                                              color: AppColors.lightGrey)),
                                      if (i > 1 && i != post.categories?.length)
                                        const Text(' • '),
                                    ],
                                  ));
                            }).values
                          ],
                          const SizedBox(height: 12),
                          Text(post.postSummary ?? '',
                              style: AppStyles.s12w600
                                  .copyWith(color: AppColors.black)),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(AppAssets.svg.view,
                                      color: AppColors.lightGrey),
                                  const SizedBox(width: 4),
                                  Text(post.views.toString(),
                                      style: AppStyles.s12w600)
                                ],
                              ),
                              BlocBuilder<PostsBloc, PostsState>(
                                builder: (context, state) {
                                  return GestureDetector(
                                    onTap: () {
                                      context.read<PostsBloc>().add(
                                          PostsEvent.addPost(id: post.id!));
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                            color: state.favouritePosts!
                                                    .contains(post.id!)
                                                ? AppColors.black
                                                : AppColors.backgroundBlue,
                                            borderRadius:
                                                BorderRadius.circular(20)),
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
                );
              }
            } else {
              return const Center(child: Text('Введите запрос для поиска'));
            }
          },
        ),
      ),
    );
  }
}
