import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maharah/core/models/onboarding_model.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/generated/locale_keys.g.dart';
import 'package:maharah/views/widgets/custom_page_indicator.dart';
import 'package:maharah/views/widgets/language_button.dart';
import 'package:maharah/views/widgets/onboarding_actions.dart';
import 'package:maharah/views/widgets/onboarding_item.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;
  List<OnboardingModel> onboardingList = [
    OnboardingModel(
      title: LocaleKeys.Splash_HourlyServices.tr(),
      description: LocaleKeys.Splash_HourlyServicesDescription.tr(),
      image: Assets.imagesOnboardingImg1,
    ),
    OnboardingModel(
      title: LocaleKeys.Splash_MonthlyServices.tr(),
      description: LocaleKeys.Splash_MonthlyServicesDescription.tr(),
      image: Assets.imagesOnboardingImg2,
    ),
    OnboardingModel(
      title: LocaleKeys.Splash_SelfService.tr(),
      description: LocaleKeys.Splash_SelfServiceDescription.tr(),
      image: Assets.imagesOnboardingImg3,
    ),
    OnboardingModel(
      title: LocaleKeys.Splash_VariousPaymentMethods.tr(),
      description: LocaleKeys.Splash_VariousPaymentMethodsDescription.tr(),
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
              Align(
                alignment: Localizations.localeOf(context).languageCode == 'ar'
                    ? Alignment.topRight
                    : Alignment.topLeft,
                child: const LanguageButton(),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Localizations.localeOf(context).languageCode == 'ar'
                    ? Alignment.topLeft
                    : Alignment.topRight,
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
