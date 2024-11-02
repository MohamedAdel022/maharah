// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/models/list_item_model.dart';
import 'package:maharah/core/models/service_item_model.dart';
import 'package:maharah/core/utils/app_images.dart';
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
                  child: const Text(
                    'Which service?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                bottom: -70,
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
                      child: const HomeMainItem(
                        title: 'HOURLY SERVICES',
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
                      child: const HomeMainItem(
                        title: 'MONTHLY SERVICES',
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
                    title: 'Mediation Service',
                    description:
                        'Sponsorship in a short period, with distinctive packages prices',
                    imagePath: Assets.imagesMediationIcon)),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BusinessServiceView()));
            },
            child: HomeListItem(
                model: ListItemModel(
                    title: 'Business Service',
                    description:
                        'Sponsorship in a short period, with distinctive packages prices',
                    imagePath: Assets.imagesBusinessSectorIcon)),
          ),
          HomeListItem(
              model: ListItemModel(
                  title: 'Training Service',
                  description:
                      'Sponsorship in a short period, with distinctive packages prices',
                  imagePath: Assets.imagesAyadiInstituteLogo)),
        ],
      ),
    );
  }
}
