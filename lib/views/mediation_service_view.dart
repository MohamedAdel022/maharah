import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';
import 'package:maharah/views/widgets/custom_dropdown_button.dart';
import 'package:maharah/views/widgets/custom_text_field.dart';

class MediationServiceView extends StatelessWidget {
  const MediationServiceView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Mediation Service'),
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
            const Center(
              child: Text(
                'Sponsorship in a short period, with distinctive prices',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            const Center(child: ServiceTypeButton()),
            const SizedBox(height: 16),
            const Text(
              'Request Details',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
            ),
            const SizedBox(height: 8),
            const Expanded(
              child: SingleChildScrollView(
                  child: Column(children: [
                CustomDropdownButton(
                  title: 'Required Nationality *',
                  labelText: 'Nationality',
                  items: ['Nationality1', 'Nationality2'],
                ),
                CustomDropdownButton(
                    labelText: 'Profession',
                    items: ['Profession1', 'Profession2'],
                    title: 'Required Profession *'),
                SizedBox(height: 16),
                CustomTextField(
                  hintText: 'Name',
                  labelText: 'Name *',
                ),
                CustomTextField(hintText: '05xxxxxxxx', labelText: 'Phone *'),
                CustomTextField(hintText: 'Email', labelText: 'Email'),
              ])),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle submit action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: textColor, // Gold color
                ),
                child:
                    const Text('SUBMIT', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceTypeButton extends StatefulWidget {
  const ServiceTypeButton({
    super.key,
  });

  @override
  State<ServiceTypeButton> createState() => _ServiceTypeButtonState();
}

class _ServiceTypeButtonState extends State<ServiceTypeButton> {
  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.transparent),
      child: ToggleButtons(
          // list of booleans
          isSelected: isSelected,
          // text color of selected toggle
          selectedColor: Colors.white,
          // text color of not selected toggle
          color: textColor,
          // fill color of selected toggle
          fillColor: textColor,
          // border properties for each toggle
          renderBorder: false,
          borderRadius: BorderRadius.circular(15),
          // add widgets for which the users need to toggle
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('P SERVICE',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('MEDIATION SERVICE',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ),
          ],
          // to select or deselect when pressed
          onPressed: (int newIndex) {
            setState(() {
              // looping through the list of booleans values
              for (int index = 0; index < isSelected.length; index++) {
                // checking for the index value
                if (index == newIndex) {
                  // one button is always set to true
                  isSelected[index] = true;
                } else {
                  // other two will be set to false and not selected
                  isSelected[index] = false;
                }
              }
            });
          }),
    );
  }
}
