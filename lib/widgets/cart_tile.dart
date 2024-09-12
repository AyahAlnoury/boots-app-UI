import 'package:boots_app/core/constants.dart';
import 'package:boots_app/models/cart_item.dart';
import 'package:boots_app/widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CartTileWidget extends StatelessWidget {
  final CartItem item; //cartItems[index]
  final Function() onRemove;
  final Function() onAdd;
  const CartTileWidget(
      {super.key,
      required this.onRemove,
      required this.onAdd,
      required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              height: 85,
              width: 85,
              decoration: BoxDecoration(
                color: kcontentColor,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(10),
              child: Image.asset(item.product.image),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.product.title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  item.product.category,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400),
                ),
                Text(
                  "\$${item.product.price.toString()}",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
      Positioned(
          top: 5,
          right: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Ionicons.trash_outline, color: Colors.red),
              ),
              AddToCartWidget(
                  currentNumber: item.quantity,
                  onAdd: onAdd,
                  onRemove: onRemove),
            ],
          ))
    ]);
  }
}
