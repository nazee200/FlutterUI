import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Rowitemwidget extends StatelessWidget {
  Rowitemwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i <= 4; i++)
            Container(
              //height: 100,
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF5F9FD),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, right: 70),
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 57, 78, 89),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Image.asset(
                          height: 150,
                          width: 150,
                          fit: BoxFit.contain,
                          'assets/${i}.png')
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nike Shoe',
                          style: TextStyle(
                              fontSize: 23,
                              color: Color.fromARGB(255, 57, 78, 89),
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Men's Shoe",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF475269),
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "\$50",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              margin: const EdgeInsets.all(3),
                              padding: const EdgeInsets.all(10),
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF475269),
                              ),
                              child: const Icon(
                                CupertinoIcons.cart_badge_plus,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
