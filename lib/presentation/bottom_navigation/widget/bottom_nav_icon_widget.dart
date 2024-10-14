import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationIconWidget extends StatelessWidget {
  const BottomNavigationIconWidget({
    super.key,
    required this.svgPath,
    this.isSelected = false,
  });
  final String svgPath;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16), child: SvgPicture.asset(svgPath));
  }
}
