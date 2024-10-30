import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/models/onboarding_model.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/views/home_view.dart';
import 'package:maharah/views/widgets/custom_page_indicator.dart';
import 'package:maharah/views/widgets/language_button.dart';
import 'package:maharah/views/widgets/onboarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController(initialPage: 0);
  final List<OnboardingModel> onboardingList = [
    const OnboardingModel(
      title: 'Hourly Services',
      description: 'Description 2',
      image: Assets.imagesWatch,
    ),
    const OnboardingModel(
      title: 'Monthly Services',
      description: 'Description 1',
      image: Assets.images3dHouse,
    ),
    const OnboardingModel(
      title: 'Self Service',
      description: 'Description 3',
      image: Assets.imagesRb26088,
    ),
    const OnboardingModel(
      title: 'Various Payment Methods',
      description: 'Description 3',
      image: Assets.imagesNoroot,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: LanguageButton(),
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomPageIndicator(
                    controller: controller, count: onboardingList.length),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: onboardingList.length,
                itemBuilder: (context, index) {
                  return OnboardingItem(onboardingModel: onboardingList[index]);
                },
              ),
            ),
            const Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
