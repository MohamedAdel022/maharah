import 'package:flutter/material.dart';
import 'package:maharah/core/models/onboarding_model.dart';
import 'package:maharah/core/utils/app_images.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final List<OnboardingModel> onboardingList = [
    const OnboardingModel(
      title: 'Title 2',
      description: 'Description 2',
      image: 'assets/images/onboarding2.png',
    ),
    const OnboardingModel(
      title: 'Monthly Services',
      description: 'Description 1',
      image: Assets.images3dHouse,
    ),
    const OnboardingModel(
      title: 'Title 3',
      description: 'Description 3',
      image: 'assets/images/onboarding3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

      ],
    );
  }
}
