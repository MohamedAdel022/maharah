import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({
    super.key,
    required this.controller,
    required this.count,
  });

  final PageController controller;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      onDotClicked: (index) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
      effect: const ExpandingDotsEffect(
        dotWidth: 13, // Default width of inactive dots
        dotHeight: 5, // Default height of inactive dots
        expansionFactor: 1.5, // Expands the active dot to be taller and wider
        activeDotColor: textColor,
        dotColor: greyColor,
      ),
    );
  }
}
