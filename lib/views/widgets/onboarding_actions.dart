import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/generated/locale_keys.g.dart';
import 'package:maharah/views/home_view.dart';

class OnboardingActions extends StatelessWidget {
  const OnboardingActions({
    super.key,
    required this.currentPage,
    required this.onboardingLength,
    required this.controller,
  });

  final int currentPage;
  final int onboardingLength;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        currentPage != onboardingLength - 1
            ? Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {
                    navigateToHome(context);
                  },
                  child: Row(
                    children: [
                      Text(
                        LocaleKeys.Splash_Skip.tr(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox(),
        Container(
          margin: const EdgeInsets.all(20),
          decoration: const ShapeDecoration(
            color: textColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
          child: TextButton(
            onPressed: () {
              if (currentPage == onboardingLength - 1) {
                // Handle 'Get Started' action here
                navigateToHome(context);
              } else {
                controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves
                      .easeInOut, // Change curve for smoother page transition
                );
              }
            },
            child: Text(
              currentPage == onboardingLength - 1
                  ? LocaleKeys.Splash_StartNow.tr()
                  : LocaleKeys.Splash_Next.tr(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  void navigateToHome(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomeView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const beginScale = 0.0; // Start with a smaller view
          const endScale = 1.0; // End with the full size
          const beginOpacity = 0.0; // Start transparent
          const endOpacity = 1.0; // End opaque
          const curve = Curves.easeInOut;

          var scaleAnimation = Tween(begin: beginScale, end: endScale)
              .chain(CurveTween(curve: curve))
              .animate(animation);
          var fadeAnimation = Tween(begin: beginOpacity, end: endOpacity)
              .chain(CurveTween(curve: curve))
              .animate(animation);

          return ScaleTransition(
            scale: scaleAnimation,
            child: FadeTransition(
              opacity: fadeAnimation,
              child: child,
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 800),
      ),
      (route) => false,
    );
  }
}
