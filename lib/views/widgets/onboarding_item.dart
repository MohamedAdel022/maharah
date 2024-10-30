import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/models/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
    required this.onboardingModel,
  });

  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          onboardingModel.image,
        ),
        Text(
          onboardingModel.title,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: textColor),
        ),
        Text(
          onboardingModel.description,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
