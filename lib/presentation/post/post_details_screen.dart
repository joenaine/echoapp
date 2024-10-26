import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/personality/personality_bloc.dart';
import 'package:echoapp/application/posts/post_detail/post_detail_bloc.dart';
import 'package:echoapp/application/posts/posts_bloc.dart';
import 'package:echoapp/core/constants/app_assets.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/core/utils/to_date.dart';
import 'package:echoapp/presentation/common_widgets/app_image_widget.dart';
import 'package:echoapp/presentation/common_widgets/url_function.dart';
import 'package:echoapp/presentation/routes/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class PostDetailsScreen extends StatelessWidget {
  const PostDetailsScreen({super.key, this.previousId});
  final int? previousId;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        if (previousId != null) {
          context
              .read<PostDetailBloc>()
              .add(PostDetailEvent.fetch(id: previousId));
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.backgroundBlue,
        appBar: AppBar(),
        body: BlocConsumer<PostDetailBloc, PostDetailState>(
          listener: (context, state) {
            state.mapOrNull(
              error: (e) {
                FlushbarHelper.createError(message: e.error ?? '')
                    .show(context);
              },
            );
          },
          builder: (context, state) {
            return state.map(
              initial: (_) => const SizedBox(),
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (e) {
                final post = e.postSingle?.post;
                final similarPosts = e.postSingle?.similarPosts;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                          onTap: () {
                            launchURL(post?.postLink ?? '');
                          },
                          title: Text(post?.channel ?? '',
                              style: AppStyles.s16w700),
                          subtitle: Text('Открыть в Telegram',
                              style: AppStyles.s12w400
                                  .copyWith(color: AppColors.lightGrey)),
                          trailing: const Icon(CupertinoIcons.forward),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (post?.categories != null)
                              Wrap(
                                spacing: 4,
                                children: post!.categories!.map((category) {
                                  return Chip(
                                    label: Text(
                                      category,
                                      style: AppStyles.s12w400
                                          .copyWith(color: AppColors.black),
                                    ),
                                    backgroundColor: AppColors.backgroundLight,
                                  );
                                }).toList(),
                              ),
                            const SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(toDate(post!.postDate!),
                                        style: AppStyles.s12w400),
                                    const SizedBox(width: 4),
                                    const Text('•'),
                                    const SizedBox(width: 4),
                                    Text(
                                      '${post.views} прочтений',
                                      style: AppStyles.s12w400,
                                    ),
                                  ],
                                ),
                                BlocBuilder<PostsBloc, PostsState>(
                                  builder: (context, state) {
                                    bool? isFavorite =
                                        state.favouritePosts?.contains(post.id);
                                    return GestureDetector(
                                      onTap: () {
                                        // Add/remove post from favorites (handled by bloc)
                                        context.read<PostsBloc>().add(
                                            PostsEvent.addPost(id: post.id!));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: isFavorite == true
                                              ? AppColors.black
                                              : AppColors.backgroundBlue,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: SvgPicture.asset(
                                          AppAssets.svg.savePlus,
                                          color: isFavorite!
                                              ? AppColors.white
                                              : null,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(post.postSummary ?? '',
                                style: AppStyles.s14w500),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      if (post.tags != null)
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Теги', style: AppStyles.s16w600),
                              const SizedBox(height: 4),
                              Wrap(
                                spacing: 4,
                                children: post.tags!.map((category) {
                                  return Chip(
                                    label: Text(
                                      category,
                                      style: AppStyles.s12w400
                                          .copyWith(color: AppColors.black),
                                    ),
                                    backgroundColor: AppColors.backgroundLight,
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      const SizedBox(height: 12),
                      if (post.personalities != null)
                        ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: post.personalities?.length ?? 0,
                          itemBuilder: (BuildContext context, int index) {
                            final person = post.personalities?[index];
                            return Container(
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppImageWidget(
                                      height: 80,
                                      radius: 200,
                                      path: person?.photo,
                                    ),
                                    const SizedBox(height: 20),
                                    Flexible(
                                      child: SizedBox(
                                        width: 200,
                                        child: Text(
                                            textAlign: TextAlign.center,
                                            person?.fullName ?? '',
                                            style: AppStyles.s16w600),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    BlocBuilder<PersonalityBloc,
                                        PersonalityState>(
                                      builder: (context, state) {
                                        return state.selectedCategories != null
                                            ? MaterialButton(
                                                minWidth: 70,
                                                padding:
                                                    const EdgeInsets.all(10),
                                                color: state.selectedCategories!
                                                        .contains(person?.id)
                                                    ? AppColors.white
                                                    : AppColors.black,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: .5),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                onPressed: () {
                                                  context
                                                      .read<PersonalityBloc>()
                                                      .add(PersonalityEvent
                                                          .addPerson(
                                                              id: person.id!));
                                                },
                                                child: state.selectedCategories!
                                                        .contains(person!.id)
                                                    ? Text(
                                                        'Убрать',
                                                        style: AppStyles.s10w500
                                                            .copyWith(
                                                                color: AppColors
                                                                    .black),
                                                      )
                                                    : Text(
                                                        'Добавить',
                                                        style: AppStyles.s10w500
                                                            .copyWith(
                                                                color: AppColors
                                                                    .white),
                                                      ))
                                            : const SizedBox();
                                      },
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                        ),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text('Похожие материалы',
                                style: AppStyles.s16w600),
                          )),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 16,
                                  mainAxisExtent: 400),
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            final similarPost = similarPosts?[index];
                            return GestureDetector(
                              onTap: () {
                                context.read<PostDetailBloc>().add(
                                    PostDetailEvent.fetch(id: similarPost.id));
                                context.router.push(
                                    PostDetailsRoute(previousId: post.id));
                              },
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Wrap(
                                        children: similarPost!.categories!
                                            .map((e) => Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Text('$e ',
                                                      style: AppStyles.s10w400
                                                          .copyWith(
                                                              color: AppColors
                                                                  .black)),
                                                ))
                                            .toList(),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(similarPost.title ?? '',
                                          style: AppStyles.s12w600,
                                          maxLines: 12,
                                          overflow: TextOverflow.ellipsis),
                                      const SizedBox(height: 12),
                                      Wrap(
                                        children: similarPost.tags!
                                            .map((e) => Container(
                                                  margin:
                                                      const EdgeInsets.all(2),
                                                  padding:
                                                      const EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          width: .5)),
                                                  child: Text('#$e ',
                                                      style: AppStyles.s8w400
                                                          .copyWith(
                                                              color: AppColors
                                                                  .black)),
                                                ))
                                            .toList(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
              error: (e) {
                return Center(child: Text('Exception : ${e.error}'));
              },
            );
          },
        ),
      ),
    );
  }
}
