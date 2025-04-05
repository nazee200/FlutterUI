import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nikeshow/app/modules/itempage/views/itempage_view.dart';

class Allitemwidget extends StatelessWidget {
  const Allitemwidget({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i <= 4; i++)
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            padding: const EdgeInsets.all(10),
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF425769).withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5)
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => ItempageView());
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/${i}.png',
                          height: 120, width: 120)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Nike Shoe',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF475269)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New Nike Shoe for mens',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF475269).withOpacity(0.5)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$55",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xFF425769),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          CupertinoIcons.cart_badge_plus,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
