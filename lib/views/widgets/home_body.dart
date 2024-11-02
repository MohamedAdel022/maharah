// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/models/list_item_model.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/views/business_service_view.dart';
import 'package:maharah/views/mediation_service_view.dart';
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
                            return const BottomSheetWidget();
                          },
                        );
                      },
                      child: const HomeMainItem(
                        title: 'HOURLY SERVICES',
                        img: Assets.imagesHourlyService,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const HomeMainItem(
                      title: 'MONTHLY SERVICES',
                      img: Assets.imagesMonthlyService,
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

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      height: MediaQuery.of(context).size.height * 0.26,
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text('Choose the service type',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: SvgPicture.asset(
                          Assets.imagesMonthlyCleaningServiceIcon),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
