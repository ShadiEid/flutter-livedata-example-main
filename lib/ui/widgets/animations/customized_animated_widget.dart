/// Generated By XFlutter Cli.
///

import 'package:flutter/material.dart';

class CustomizedAnimatedWidget extends StatefulWidget {
  /// [child] is wrapped [Widget] inside [CustomizedAnimatedWidget].
  final Widget child;

  /// animation [Duration] default is Duration(milliseconds: 300).
  final Duration duration;

  /// make [AnimationController] starts after [Duration].
  final Duration delay;

  /// [manualTrigger] when set true you will disable animate [child] when view initialized
  final bool manualTrigger;

  /// animation sliding value.
  final double from;
  const CustomizedAnimatedWidget({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 200),
    this.delay = const Duration(milliseconds: 0),
    this.manualTrigger = false,
    this.from = 30,
  }) : super(key: key);

  @override
  State<CustomizedAnimatedWidget> createState() => CustomizedAnimatedWidgetState();
}

class CustomizedAnimatedWidgetState extends State<CustomizedAnimatedWidget> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  bool disposed = false;
  late Animation<double> animation;
  late Animation<double> opacity;
  @override
  void dispose() {
    disposed = true;
    controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: widget.duration, vsync: this);
    animation = Tween<double>(begin: widget.from, end: 0).animate(CurvedAnimation(parent: controller!, curve: Curves.easeOut));
    opacity = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: controller!, curve: const Interval(0, 1)));
    if (!widget.manualTrigger) {
      Future.delayed(widget.delay, () {
        if (!disposed) {
          controller?.forward();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller!,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset: Offset(0, animation.value),
          child: AnimatedOpacity(
            opacity: controller!.value,
            duration: widget.duration,
            child: widget.child,
          ),
        );
      },
    );
  }
}
