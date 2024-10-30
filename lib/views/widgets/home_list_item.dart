import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';

class HomeListItem extends StatelessWidget {
  const HomeListItem({
    super.key,
  });

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
            const Icon(
              Icons.people,
              size: 50,
              color: textColor,
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'main text',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    'sub text hlkahfsa;jakldsja,mv.,xck;vaj;djfaf;',
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
