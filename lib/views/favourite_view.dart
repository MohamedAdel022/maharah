import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/generated/locale_keys.g.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(LocaleKeys.FavoritePackage_Favorite.tr()),
        backgroundColor: backgroundColor,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Align(
          alignment: Alignment.topCenter,
          child: Text(
            LocaleKeys.FavoritePackage_NoFavorites.tr(),
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          )),
    );
  }
}
