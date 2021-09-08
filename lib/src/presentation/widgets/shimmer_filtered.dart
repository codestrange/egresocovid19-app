import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerFiltered extends StatelessWidget {
  const ShimmerFiltered({
    Key? key,
    required this.baseColor,
    required this.highlightColor,
    required this.child,
  }) : super(key: key);

  final Color baseColor;
  final Color highlightColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return AnimatedColorFilter(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: child,
      );
    } else {
      return Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: child,
      );
    }
  }
}

class AnimatedColorFilter extends StatefulWidget {
  const AnimatedColorFilter({
    Key? key,
    required this.baseColor,
    required this.highlightColor,
    required this.child,
  }) : super(key: key);

  final Color baseColor;
  final Color highlightColor;
  final Widget child;

  @override
  _AnimatedColorFilterState createState() => _AnimatedColorFilterState();
}

class _AnimatedColorFilterState extends State<AnimatedColorFilter>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    animation = Tween<double>(begin: 0, end: 2)
        .animate(CurvedAnimation(parent: controller, curve: Curves.ease));

    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return ColorFiltered(
          colorFilter: ColorFilter.mode(
              Color.lerp(widget.baseColor, widget.highlightColor,
                  animation.value < 1 ? animation.value : 2 - animation.value)!,
              BlendMode.srcATop),
          child: widget.child,
        );
      },
    );
  }
}
