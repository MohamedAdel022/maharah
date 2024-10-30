import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/views/login_view.dart';
import 'package:maharah/views/widgets/custom_toggle_button.dart';
import 'package:maharah/views/widgets/home_drawer_button.dart';

// ignore: must_be_immutable
class HomeDrawer extends StatelessWidget {
  HomeDrawer({
    super.key,
  });

  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DrawerFirstSection(),
            const DrawerSecondSection(),
            const SizedBox(
              height: 20,
            ),
            const HomeDrawerButton(
              imgpath: Assets.imagesMapPin,
              title: 'My Locations',
            ),
            const HomeDrawerButton(
              imgpath: Assets.imagesTicket,
              title: 'My Tickets',
            ),
            const HomeDrawerButton(
              imgpath: Assets.imagesSettings,
              title: 'Profile',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Divider(),
            ),
            const HomeDrawerButton(
              imgpath: Assets.imagesFaqs,
              title: 'Frequently Asked Questions',
            ),
            const HomeDrawerButton(
              imgpath: Assets.imagesInfo,
              title: 'About Maharah',
            ),
            const HomeDrawerButton(
              imgpath: Assets.imagesMap,
              title: 'Maharah\'s Branches',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, bottom: 15),
              child: Text(
                'Privacy Policy',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38),
              ),
            ),
            Center(
              child: CustomToggleButton(isSelected: isSelected),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Text(
                'Follow us',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.imagesXTwitter, width: 25),
                  const SizedBox(width: 10),
                  SvgPicture.asset(Assets.imagesSnapchat, width: 25),
                  const SizedBox(width: 10),
                  SvgPicture.asset(Assets.imagesInstagram, width: 25),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerSecondSection extends StatelessWidget {
  const DrawerSecondSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .08,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('WALLET',
                  style: TextStyle(
                    fontSize: 18,
                    color: textColor,
                  )),
              Text('0 RIYAL',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ))
            ],
          ),
          VerticalDivider(
            color: Colors.grey,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('POINTS',
                  style: TextStyle(
                    fontSize: 18,
                    color: textColor,
                  )),
              Text('0 POINT',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class DrawerFirstSection extends StatelessWidget {
  const DrawerFirstSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .12,
      padding: const EdgeInsets.only(left: 25),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        color: primaryColor,
      ),
      child: InkWell(
        onTap: () {
          // Add your onTap functionality here
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const LoginView()),
          );
        },
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.imagesLogin,
              width: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('LOGIN',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: textColor))
          ],
        ),
      ),
    );
  }
}
