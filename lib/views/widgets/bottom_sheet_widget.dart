import 'package:flutter/material.dart';
import 'package:maharah/core/models/service_item_model.dart';
import 'package:maharah/views/widgets/bottom_sheet_service_item.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
    required this.items,
  });
  final List<ServiceItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    'Choose the service type',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: items.map((e) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: BottomSheetServiceItem(
                            item: e,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
