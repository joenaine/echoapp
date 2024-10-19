import 'package:echoapp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationIconWidget extends StatelessWidget {
  const BottomNavigationIconWidget(
      {super.key, required this.svgPath, this.isSelected = false, this.color});
  final String svgPath;
  final bool? isSelected;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: SvgPicture.asset(svgPath, color: color));
  }
}
