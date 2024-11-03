import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/generated/locale_keys.g.dart';
import 'package:maharah/views/login_view.dart';
import 'package:maharah/views/my_tickets_view.dart';
import 'package:maharah/views/widgets/custom_toggle_button.dart';
import 'package:maharah/views/widgets/home_drawer_button.dart';

// ignore: must_be_immutable
class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isEnglish = Localizations.localeOf(context).languageCode == 'en';
    List<bool> isSelected = [isEnglish, !isEnglish];
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
            HomeDrawerButton(
              imgpath: Assets.imagesMapPin,
              title: LocaleKeys.Navigation_Locations.tr(),
              onPressed: () {},
            ),
            HomeDrawerButton(
              imgpath: Assets.imagesTicket,
              title: LocaleKeys.Navigation_MyTickets.tr(),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const MyTicketsView()),
                );
              },
            ),
            HomeDrawerButton(
              imgpath: Assets.imagesSettings,
              title: LocaleKeys.Navigation_Settings.tr(),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Divider(),
            ),
            HomeDrawerButton(
              imgpath: Assets.imagesFaqs,
              title: LocaleKeys.Navigation_FAQs.tr(),
              onPressed: () {},
            ),
            HomeDrawerButton(
              imgpath: Assets.imagesInfo,
              title: LocaleKeys.Navigation_AboutMaharah.tr(),
              onPressed: () {},
            ),
            HomeDrawerButton(
              imgpath: Assets.imagesMap,
              title: LocaleKeys.Navigation_MaharahBranches.tr(),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
              child: Text(
                LocaleKeys.Navigation_PrivacyPolicy.tr(),
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38),
              ),
            ),
            Center(
              child: CustomToggleButton(isSelected: isSelected),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
              child: Text(
                LocaleKeys.Navigation_FollowUs.tr(),
                style: const TextStyle(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocaleKeys.Navigation_Wallet.tr(),
                  style: const TextStyle(
                    fontSize: 18,
                    color: textColor,
                  )),
              Text('0 ${LocaleKeys.Navigation_Riyal.tr()}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ))
            ],
          ),
          const VerticalDivider(
            color: Colors.grey,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocaleKeys.Navigation_Points.tr(),
                  style: const TextStyle(
                    fontSize: 18,
                    color: textColor,
                  )),
              Text('0 ${LocaleKeys.Navigation_Point.tr()}',
                  style: const TextStyle(
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
            Text(LocaleKeys.Register_Login.tr(),
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: textColor))
          ],
        ),
      ),
    );
  }
}
