import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/views/widgets/home_app_bar.dart';
import 'package:maharah/views/widgets/home_main_item.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .3,
                decoration: const BoxDecoration(
                    color: appBarColor,
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
                      title: 'Hourly Services',
                      img: Assets.imagesClock,
                    ),
                    SizedBox(width: 20),
                    HomeMainItem(
                      title: 'Monthly Services',
                      img: Assets.imagesHouse,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
