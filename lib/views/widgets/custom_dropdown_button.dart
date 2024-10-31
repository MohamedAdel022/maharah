import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton(
      {super.key,
      required this.labelText,
      required this.items,
      required this.title});
  final String labelText;
  final List<String> items;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 18)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: labelText,
              labelStyle: const TextStyle(fontSize: 14),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide.none,
              ),
            ),
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              // Handle nationality change
            },
          ),
        ),
      ],
    );
  }
}
