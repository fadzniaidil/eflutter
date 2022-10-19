import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  final PageController controller;
  final int itemCount;
  final Axis scrollDirection;
  final Widget Function(BuildContext, int) itemBuilder;
  const AnimatedPage({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    required this.controller,
    required this.scrollDirection,
  }) : super(key: key);

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  late Timer timer;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      widget.controller.animateToPage(currentPage,
          duration: const Duration(milliseconds: 250), curve: Curves.linear);
      currentPage++;
      if (currentPage == widget.itemCount) {
        currentPage = 0;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.controller,
      itemCount: widget.itemCount,
      scrollDirection: widget.scrollDirection,
      itemBuilder: widget.itemBuilder,
    );
  }
}
