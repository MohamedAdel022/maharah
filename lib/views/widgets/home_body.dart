// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/models/list_item_model.dart';
import 'package:maharah/core/models/service_item_model.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/generated/locale_keys.g.dart';
import 'package:maharah/views/business_service_view.dart';
import 'package:maharah/views/mediation_service_view.dart';
import 'package:maharah/views/widgets/bottom_sheet_widget.dart';
import 'package:maharah/views/widgets/home_list_item.dart';
import 'package:maharah/views/widgets/home_main_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  static const List<ServiceItemModel> hourlyServiceList = [
    ServiceItemModel(title: 'Cleaning', image: Assets.imagesHourlyCleaningIcon),
    ServiceItemModel(
        title: 'Hospitality', image: Assets.imagesHourlyHospitalityIcon),
    ServiceItemModel(title: 'SPA', image: Assets.imagesLavenderIcon),
  ];

  static const List<ServiceItemModel> monthlyServiceList = [
    ServiceItemModel(
        title: 'Cleaning', image: Assets.imagesMonthlyCleaningServiceIcon),
    ServiceItemModel(
        title: 'Chef', image: Assets.imagesMonthlyCookingServiceIcon),
    ServiceItemModel(title: 'Nanny', image: Assets.imagesNanny),
    ServiceItemModel(title: 'Personal Care', image: Assets.imagesPersonalCare),
    ServiceItemModel(
        title: 'Driver', image: Assets.imagesMonthlyDrivingServiceIcon),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .3,
                decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20))),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height * .03,
                  left: 20,
                  child: Text(
                    LocaleKeys.MainPage_WhichServiceWouldYouLikeToRequest.tr(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                bottom: MediaQuery.of(context).size.width * -.17,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const BottomSheetWidget(
                              items: hourlyServiceList,
                            );
                          },
                        );
                      },
                      child: HomeMainItem(
                        title: LocaleKeys.MainPage_HourlyServices.tr(),
                        img: Assets.imagesHourlyService,
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          useSafeArea: true,
                          context: context,
                          builder: (context) {
                            return const BottomSheetWidget(
                              items: monthlyServiceList,
                            );
                          },
                        );
                      },
                      child: HomeMainItem(
                        title: LocaleKeys.MainPage_MonthlyServices.tr(),
                        img: Assets.imagesMonthlyService,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MediationServiceView(),
                  ));
            },
            child: HomeListItem(
                model: ListItemModel(
                    title: LocaleKeys.MainPage_MediationService.tr(),
                    description:
                        LocaleKeys.MainPage_MediationServiceDescription.tr(),
                    imagePath: Assets.imagesMediationIcon)),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BusinessServiceView()));
            },
            child: HomeListItem(
                model: ListItemModel(
                    title: LocaleKeys.MainPage_BussinessServices.tr(),
                    description:
                        LocaleKeys.MainPage_BussinessServicesDescription.tr(),
                    imagePath: Assets.imagesBusinessSectorIcon)),
          ),
          HomeListItem(
              model: ListItemModel(
                  title: LocaleKeys.MainPage_Ayadi.tr(),
                  description: LocaleKeys.MainPage_AyadiDescription.tr(),
                  imagePath: Assets.imagesAyadiInstituteLogo)),
        ],
      ),
    );
  }
}
