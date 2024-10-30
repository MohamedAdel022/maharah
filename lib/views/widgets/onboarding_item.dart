import 'package:flutter/material.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          onboardingModel.image,
        ),
        Text(
          onboardingModel.title,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: textColor),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              onboardingModel.description,
              style:
                  TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ),
      ],
    );
  }
}
