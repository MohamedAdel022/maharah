import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/utils/app_images.dart';

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
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavItem(
              imgpath: Assets.imagesHome,
              isSelected: true,
              text: 'Home',
            ),
            BottomNavItem(
              imgpath: Assets.imagesContracts,
              isSelected: false,
              text: 'Contracts',
            ),
            BottomNavItem(
              imgpath: Assets.imagesHelp,
              isSelected: false,
              text: 'Help',
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
      onPressed: () => {debugPrint(text)},
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imgpath,
            width: 30,
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
