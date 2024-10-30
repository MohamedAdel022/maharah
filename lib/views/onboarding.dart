import 'package:flutter/material.dart';
import 'package:maharah/core/models/onboarding_model.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/views/widgets/custom_page_indicator.dart';
import 'package:maharah/views/widgets/language_button.dart';
import 'package:maharah/views/widgets/onboarding_actions.dart';
import 'package:maharah/views/widgets/onboarding_item.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;
  final List<OnboardingModel> onboardingList = [
    const OnboardingModel(
      title: 'Hourly Services',
      description: 'Hourly based services (cleaning,hospitality)',
      image: Assets.imagesOnboardingImg1,
    ),
    const OnboardingModel(
      title: 'Monthly Services',
      description:
          'Domestic workers with a monthly system(cleaning, cooking. nanny, driver) from onemonth to 24 months',
      image: Assets.imagesOnboardingImg2,
    ),
    const OnboardingModel(
      title: 'Self Service',
      description:
          'You can advance or postpone the visitdate and also lock or change the cleanerwith a click of a button',
      image: Assets.imagesOnboardingImg3,
    ),
    const OnboardingModel(
      title: 'Various Payment Methods',
      description:
          'ApplePay, Visa, Mastercard, Mada, STCPay ,Sadad, Tamara. Emkan',
      image: Assets.imagesOnboardingImg4,
    ),
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPage =
            controller.page?.round() ?? 0; // Update current page safely
      });
    });
  }

  @override
  void dispose() {
    controller.removeListener(() {
      setState(() {
        currentPage = controller.page?.round() ?? 0;
      });
    });
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
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
                    controller: controller,
                    count: onboardingList.length,
                  ),
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
                    return OnboardingItem(
                        onboardingModel: onboardingList[index]);
                  },
                ),
              ),
              OnboardingActions(
                controller: controller,
                currentPage: currentPage,
                onboardingLength: onboardingList.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
