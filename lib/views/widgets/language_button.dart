import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/generated/locale_keys.g.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (context.locale == const Locale('en')) {
          context.setLocale(const Locale('ar'));
        } else {
          context.setLocale(const Locale('en'));
        }
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
            color: greyColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            context.locale == const Locale('en')
                ? LocaleKeys.Languages_1.tr()
                : LocaleKeys.Languages_0.tr(),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
