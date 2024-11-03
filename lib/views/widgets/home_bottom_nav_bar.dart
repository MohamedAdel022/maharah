import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/generated/locale_keys.g.dart';
import 'package:maharah/views/login_view.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        BottomNavItem(
          imgpath: Assets.imagesHome,
          isSelected: true,
          text: LocaleKeys.Tabs_Home.tr(),
        ),
        BottomNavItem(
          imgpath: Assets.imagesContracts,
          isSelected: false,
          text: LocaleKeys.Tabs_Contracts.tr(),
        ),
        BottomNavItem(
          imgpath: Assets.imagesHelp,
          isSelected: false,
          text: LocaleKeys.Tabs_Help.tr(),
        ),
      ]),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.isSelected,
    required this.imgpath,
    required this.text,
  });
  final bool isSelected;
  final String imgpath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        if (text == 'Contracts') {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LoginView();
          }));
        }
      },
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imgpath,
            width: 25,
            // ignore: deprecated_member_use
            color: isSelected ? textColor : Colors.grey,
          ),
          Text(text,
              style: TextStyle(color: isSelected ? textColor : Colors.grey)),
        ],
      ),
    );
  }
}
