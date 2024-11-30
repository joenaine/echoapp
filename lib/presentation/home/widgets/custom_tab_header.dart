import 'package:flutter/material.dart';

class CustomTabHeader extends SliverPersistentHeaderDelegate {
  CustomTabHeader(
    this.searchUI, {
    this.maxHeight = 55.0, // Allow dynamic max height
    this.minHeight = 55.0, // Allow dynamic min height
  });

  final Widget searchUI;
  final double maxHeight;
  final double minHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // You can add additional logic here for what happens when shrinkOffset changes
    return Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0, 1), blurRadius: 8),
        ]),
        child: searchUI);
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // Set this to true if there's a need to rebuild based on state change
    return oldDelegate.maxExtent != maxHeight ||
        oldDelegate.minExtent != minHeight;
  }
}
