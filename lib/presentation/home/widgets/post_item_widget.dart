import 'package:echoapp/application/posts/posts_bloc.dart';
import 'package:echoapp/domain/post/item_model.dart';
import 'package:echoapp/presentation/home/widgets/temperature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:echoapp/core/constants/app_assets.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/theme/app_colors.dart';

class PostItemWidget extends StatelessWidget {
  final Item post;

  const PostItemWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(post.title ?? '', style: AppStyles.s16w700),
          const SizedBox(height: 4),
          Text(post.channel ?? '', style: AppStyles.s12w400),
          const SizedBox(height: 8),
          if (post.categories != null)
            Wrap(
              spacing: 4,
              children: post.categories!.map((category) {
                return Chip(
                  label: Text(
                    category,
                    style: AppStyles.s12w400.copyWith(color: AppColors.black),
                  ),
                  backgroundColor: AppColors.backgroundLight,
                );
              }).toList(),
            ),
          const SizedBox(height: 12),
          Text(
            post.postSummary ?? '',
            style: AppStyles.s12w600.copyWith(color: AppColors.black),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.svg.view,
                    color: AppColors.lightGrey,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    post.views?.toString() ?? '0',
                    style: AppStyles.s12w600,
                  ),
                  const SizedBox(width: 15),
                  TemperatureGauge(temperature: post.postTemperature ?? 0)
                ],
              ),
              BlocBuilder<PostsBloc, PostsState>(
                builder: (context, state) {
                  bool? isFavorite = state.favouritePosts?.contains(post.id);
                  return GestureDetector(
                    onTap: () {
                      // Add/remove post from favorites (handled by bloc)
                      context
                          .read<PostsBloc>()
                          .add(PostsEvent.addPost(id: post.id!));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: isFavorite == true
                            ? AppColors.black
                            : AppColors.backgroundBlue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SvgPicture.asset(
                        AppAssets.svg.savePlus,
                        color: isFavorite! ? AppColors.white : null,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
