import 'package:boots_app/core/constants.dart';
import 'package:boots_app/models/cart_item.dart';
import 'package:boots_app/models/product.dart';
import 'package:boots_app/widgets/add_to_cart.dart';
import 'package:boots_app/widgets/cart_tile.dart';
import 'package:boots_app/widgets/check_out_box.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(backgroundColor: Colors.white),
              icon: const Icon(Ionicons.chevron_back)),
        ),
      ),
      bottomSheet: CheckOutBox(
        items: cartItems,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) => CartTileWidget(
          item: cartItems[index],
          onRemove: () {
            if (cartItems[index].quantity != 1) {
              setState(() {
                cartItems[index].quantity--;
              });
            }
            ;
          },
          onAdd: () {
            setState(() {
              cartItems[index].quantity++;
            });
          },
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: cartItems.length,
      ),
    );
  }
}
