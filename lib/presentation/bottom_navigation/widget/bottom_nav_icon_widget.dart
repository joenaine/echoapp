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
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child: SvgPicture.asset(svgPath, color: color));
  }
}
