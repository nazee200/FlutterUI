import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF425769),
            ),
            child: const Row(
              children: [
                Text(
                  'Add To Cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 23),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.cart_badge_plus,
                  color: Colors.white,
                  size: 35,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF425769),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                  size: 35,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
