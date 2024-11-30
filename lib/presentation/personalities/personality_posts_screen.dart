import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/personality_posts/personality_posts_bloc.dart';
import 'package:echoapp/application/posts/post_detail/post_detail_bloc.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/presentation/home/widgets/post_item_widget.dart';
import 'package:echoapp/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PersonalityPostsScreen extends StatelessWidget {
  const PersonalityPostsScreen({super.key, this.title, this.id});
  final String? title;
  final int? id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundBlue,
        appBar: AppBar(
          title: Text(title ?? ''),
        ),
        body: BlocBuilder<PersonalityPostsBloc, PersonalityPostsState>(
          builder: (context, state) {
            if (state.status == Status.loading && state.posts.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.status == Status.error && state.posts.isEmpty) {
              return Center(
                  child: Text(state.errorMessage,
                      style: AppStyles.s16w500, textAlign: TextAlign.center));
            }

            if (state.posts.isEmpty) {
              return const Center(child: Text('No favorite posts yet.'));
            }
            return NotificationListener<ScrollNotification>(
              onNotification: (scrollInfo) {
                if (scrollInfo.metrics.pixels ==
                        scrollInfo.metrics.maxScrollExtent &&
                    state.hasMore) {
                  context
                      .read<PersonalityPostsBloc>()
                      .add(PersonalityPostsEvent.fetch(id: id!));
                }
                return false;
              },
              child: ListView.builder(
                itemCount: state.posts.length + (state.hasMore ? 1 : 0),
                itemBuilder: (context, index) {
                  // Display loading indicator only at the end
                  if (index >= state.posts.length) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  final post = state.posts[index];
                  return GestureDetector(
                      onTap: () {
                        context
                            .read<PostDetailBloc>()
                            .add(PostDetailEvent.fetch(id: post.id!));
                        context.router
                            .push(PostDetailsRoute(title: post.title));
                      },
                      child: PostItemWidget(post: post));
                },
              ),
            );
          },
        ));
  }
}
