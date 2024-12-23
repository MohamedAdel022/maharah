import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/utils/restart_app.dart';
import 'package:maharah/views/widgets/home_app_bar.dart';
import 'package:maharah/views/widgets/home_body.dart';
import 'package:maharah/views/widgets/home_bottom_nav_bar.dart';
import 'package:maharah/views/widgets/home_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const RestartWidget(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: HomeAppBar(),
        body: HomeBody(),
        bottomNavigationBar: HomeBottomNavBar(),
        drawer: HomeDrawer(),
      ),
    );
  }
}
