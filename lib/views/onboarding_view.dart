import 'package:flutter/material.dart';
import 'package:maharah/core/models/onboarding_model.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/views/widgets/custom_page_indicator.dart';
import 'package:maharah/views/widgets/language_button.dart';
import 'package:maharah/views/widgets/onboarding_item.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = PageController(initialPage: 0);
  final List<OnboardingModel> onboardingList = [
    const OnboardingModel(
      title: 'Hourly Services',
      description: 'Description 2',
      image: Assets.imagesOnboardingImg1,
    ),
    const OnboardingModel(
      title: 'Monthly Services',
      description: 'Description 1',
      image: Assets.imagesOnboardingImg2,
    ),
    const OnboardingModel(
      title: 'Self Service',
      description: 'Description 3',
      image: Assets.imagesOnboardingImg3,
    ),
    const OnboardingModel(
      title: 'Various Payment Methods',
      description: 'Description 3',
      image: Assets.imagesOnboardingImg4,
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
