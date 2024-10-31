import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';

class BusinessServiceView extends StatelessWidget {
  const BusinessServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Business Service'),
        backgroundColor: backgroundColor,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField2(
                      labelText: 'Business Name*', optional: false),
                  CustomTextField2(
                      labelText: 'Mobile Number*',
                      optional: false,
                      prefixText: '+966'),
                  CustomTextField2(labelText: 'Email', optional: true),
                  CustomTextField2(
                    labelText: 'Company File No',
                    optional: true,
                    hintText: 'Definition No',
                  ),
                ],
              ),
            )),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle send request action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: textColor, // Gold color
                ),
                child: const Text('SEND REQUEST',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2(
      {super.key,
      this.hintText,
      required this.labelText,
      required this.optional,
      this.prefixText});
  final String? hintText;
  final String labelText;
  final bool optional;
  final String? prefixText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(labelText, style: const TextStyle(fontSize: 18)),
            optional
                ? Text(' optional',
                    style: TextStyle(fontSize: 18, color: Colors.grey[400]))
                : const SizedBox(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hintText,
              prefixIcon: prefixText != null
                  ? Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 11, bottom: 10),
                      child: Text(
                        '$prefixText ',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ))
                  : null,
              hintStyle: TextStyle(color: Colors.grey[400]),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
