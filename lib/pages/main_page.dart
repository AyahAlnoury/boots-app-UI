import 'package:boots_app/pages/cart_page.dart';
import 'package:boots_app/pages/home_page.dart';
import 'package:boots_app/pages/product_page.dart';
import 'package:boots_app/widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({super.key});

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  int currentTab = 2;
  List Pages = [Scaffold(), Scaffold(), HomePage(), CartPage(), Scaffold()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentTab = 2;
          });
        },
        elevation: 0,
        shape: CircleBorder(),
        backgroundColor: Colors.amber[900],
        child: Icon(
          Iconsax.home,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: 70,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => setState(() {
                currentTab = 0;
              }),
              icon: Icon(
                Ionicons.grid_outline,
                color:
                    currentTab == 0 ? Colors.amber[900] : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 1;
              }),
              icon: Icon(
                Ionicons.heart_outline,
                color:
                    currentTab == 1 ? Colors.amber[900] : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 3;
              }),
              icon: Icon(
                Ionicons.cart_outline,
                color:
                    currentTab == 3 ? Colors.amber[900] : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                currentTab = 4;
              }),
              icon: Icon(
                Ionicons.person_outline,
                color:
                    currentTab == 4 ? Colors.amber[900] : Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
      body: Pages[currentTab],
    );
  }
}
