import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({
    super.key,
    required this.isSelected,
  });

  final List<bool> isSelected;

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
      child: ToggleButtons(
          // list of booleans
          isSelected: widget.isSelected,
          // text color of selected toggle
          selectedColor: Colors.white,
          // text color of not selected toggle
          color: Colors.black,
          // fill color of selected toggle
          fillColor: textColor,
          // border properties for each toggle
          renderBorder: false,
          borderRadius: BorderRadius.circular(15),
          // add widgets for which the users need to toggle
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('ENG', style: TextStyle(fontSize: 14)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('عربي', style: TextStyle(fontSize: 14)),
            ),
          ],
          // to select or deselect when pressed
          onPressed: (int newIndex) {
            setState(() {
              // looping through the list of booleans values
              for (int index = 0; index < widget.isSelected.length; index++) {
                // checking for the index value
                if (index == newIndex) {
                  // one button is always set to true
                  widget.isSelected[index] = true;
                } else {
                  // other two will be set to false and not selected
                  widget.isSelected[index] = false;
                }
              }
            });
          }),
    );
  }
}
