import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/helpers/image_helper.dart';
import 'package:maharah/core/utils/app_images.dart';
import 'package:maharah/views/favourite_view.dart';

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
          GestureDetector(
            child: ImageHelper.loadFromAsset(Assets.imagesMenuIcon, width: 28),
            onTap: () => Scaffold.of(context).openDrawer(),
          ),
        ],
      ),
      title: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FavouriteView()));
              },
              icon: const Icon(
                Icons.favorite_outline,
                color: Colors.white,
                size: 30,
              )),
          const Spacer(),
          const Icon(Icons.notifications_outlined,
              color: Colors.white, size: 30),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
