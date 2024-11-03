import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/core/models/list_item_model.dart';

class HomeListItem extends StatelessWidget {
  const HomeListItem({
    super.key,
    required this.model,
  });
  final ListItemModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 160,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            SvgPicture.asset(model.imagePath, width: 60),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: const TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    model.description,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
