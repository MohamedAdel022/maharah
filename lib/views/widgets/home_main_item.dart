import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/helpers/image_helper.dart';


class HomeMainItem extends StatelessWidget {
  const HomeMainItem({
    super.key,
    required this.title,
    required this.img,
  });
  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
          ),
          height: 170,
          width: 170,
          child: Column(
            children: [
              const Spacer(),
              ImageHelper.loadFromAsset(img, width: 90),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
