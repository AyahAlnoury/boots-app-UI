import 'package:boots_app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AddToCartWidget extends StatelessWidget {
  final Function() onAdd;
  final Function() onRemove;
  const AddToCartWidget({
    super.key,
    required this.currentNumber,
    required this.onAdd,
    required this.onRemove,
  });

  final int currentNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: kcontentColor,
          border: Border.all(
            color: Colors.grey.shade200,
            width: 2,
          ),
          //  borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: onRemove,
              iconSize: 18,
              icon: const Icon(
                Ionicons.remove_outline,
                color: Colors.black87,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              currentNumber.toString(),
              style: const TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 5),
            IconButton(
              onPressed: onAdd,
              iconSize: 18,
              icon: const Icon(
                Ionicons.add_outline,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
