import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/models/service_item_model.dart';

class BottomSheetServiceItem extends StatelessWidget {
  const BottomSheetServiceItem({
    super.key,
    required this.item,
  });
  final ServiceItemModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: Colors.white,
            shadows: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: SizedBox(
              width: 70, // Set the maximum width for the image
              height: 70, // Set the maximum height for the image
              child: SvgPicture.asset(
                item.image,
                fit: BoxFit.contain, // Ensures it scales within the box
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          item.title,
          style: const TextStyle(
              color: textColor, fontSize: 18, fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}
