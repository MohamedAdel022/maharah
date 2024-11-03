import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maharah/constants.dart';

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
            color: Colors.grey.withOpacity(0.1),
          ),
          height: MediaQuery.of(context).size.width * .35,
          width: MediaQuery.of(context).size.width * .35,
          child: Column(
            children: [
              const Spacer(),
              SvgPicture.asset(
                img,
                width: 70,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: textColor,
                    fontSize: 16,
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
