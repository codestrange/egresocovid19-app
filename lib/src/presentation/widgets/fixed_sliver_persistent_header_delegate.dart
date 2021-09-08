import 'package:flutter/material.dart';

class FixedSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  FixedSliverPersistentHeaderDelegate({
    required this.child,
    required this.minExtention,
    required this.maxExtention,
  });

  final Widget child;
  final double minExtention;
  final double maxExtention;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  double get maxExtent => maxExtention;

  @override
  double get minExtent => minExtention;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
