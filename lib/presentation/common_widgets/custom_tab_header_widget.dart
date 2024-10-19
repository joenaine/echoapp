import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class CustomTabHeaderWidget extends StatelessWidget {
  const CustomTabHeaderWidget(
      {super.key, required this.tabCategories, this.controller});

  final List<String> tabCategories;
  final TabController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: TabBar(
        controller: controller,
        tabAlignment: TabAlignment.start,
        padding: const EdgeInsets.only(left: 16),
        isScrollable: true,
        labelColor: AppColors.black,
        unselectedLabelColor: AppColors.lightGrey,
        indicatorColor: AppColors.backgroundDark,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: AppStyles.s16w500,
        labelPadding: const EdgeInsets.only(left: 0, right: 20.0),
        indicator: MaterialIndicator(
          bottomLeftRadius: 5,
          bottomRightRadius: 5,
          color: AppColors.backgroundDark,
          paintingStyle: PaintingStyle.fill,
        ),
        tabs: tabCategories
            .asMap()
            .map((i, value) => MapEntry(i, Tab(text: tabCategories[i])))
            .values
            .toList(),
      ),
    );
  }
}

// class CustomButtonTabHeaderWidget extends StatelessWidget {
//   const CustomButtonTabHeaderWidget({
//     super.key,
//     required this.tabCategories,
//   });

//   final List<String> tabCategories;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppColors.white,
//       child: ButtonsTabBar(
//         contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//         backgroundColor: AppColors.backgroundLight,
//         unselectedBackgroundColor: AppColors.white,
//         labelStyle: AppStyles.s16w400.copyWith(color: AppColors.white),
//         unselectedLabelStyle:
//             AppStyles.s16w400.copyWith(color: AppColors.lightGrey),
//         borderWidth: .5,
//         borderColor: AppColors.black,
//         unselectedBorderColor: AppColors.lightGrey,
//         radius: 20,
//         tabs: tabCategories
//             .asMap()
//             .map((i, value) => MapEntry(i, Tab(text: tabCategories[i])))
//             .values
//             .toList(),
//       ),
//     );
//   }
// }
