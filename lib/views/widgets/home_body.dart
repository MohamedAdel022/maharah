// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/models/list_item_model.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/views/widgets/home_list_item.dart';
import 'package:maharah/views/widgets/home_main_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

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
              const Positioned(
                bottom: -70,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeMainItem(
                      title: 'HOURLY SERVICES',
                      img: Assets.imagesHourlyService,
                    ),
                    SizedBox(width: 20),
                    HomeMainItem(
                      title: 'MONTHLY SERVICES',
                      img: Assets.imagesMonthlyService,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
          HomeListItem(
              model: ListItemModel(
                  title: 'Mediation Service',
                  description:
                      'Sponsorship in a short period, with distinctive packages prices',
                  imagePath: Assets.imagesMediationIcon)),
          HomeListItem(
              model: ListItemModel(
                  title: 'Business Service',
                  description:
                      'Sponsorship in a short period, with distinctive packages prices',
                  imagePath: Assets.imagesBusinessSectorIcon)),
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
