import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('My Favourite'),
        backgroundColor: backgroundColor,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: const Align(
          alignment: Alignment.topCenter,
          child: Text(
            'there are no prefered packages selected yet',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16),
          )),
    );
  }
}
