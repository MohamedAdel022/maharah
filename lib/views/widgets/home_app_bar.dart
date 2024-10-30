import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/helpers/image_helper.dart';
import 'package:maharah/core/utils/app_images.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      // leadingWidth: MediaQuery.of(context).size.width * .3,
      leading: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          ImageHelper.loadFromAsset(Assets.imagesMenuIcon, width: 28),
        ],
      ),
      title: const Row(
        children: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.white,
                size: 30,
              )),
          Spacer(),
          Icon(Icons.notifications_outlined, color: Colors.white, size: 30),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
