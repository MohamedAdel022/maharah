import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeDrawerButton extends StatelessWidget {
  const HomeDrawerButton({
    super.key,
    required this.title,
    required this.imgpath, required this.onPressed,
  });
  final String title;
  final String imgpath;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
      height: 50,
      child: Row(children: [
        SvgPicture.asset(
          imgpath,
          width: 20,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black38),
        )
      ]),
    );
  }
}
