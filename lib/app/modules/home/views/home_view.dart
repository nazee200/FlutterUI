import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nikeshow/app/widget/AllItemWidget.dart';
import 'package:nikeshow/app/widget/HomeNavigationBar.dart';
import 'package:nikeshow/app/widget/RowItemWidget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    HomeController controller = new HomeController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ],
                      ),
                      child: const Icon(
                        Icons.sort,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ],
                      ),
                      // child: const Badge(
                      //   padding: EdgeInsets.all(5),
                      //   alignment: Alignment.topRight,
                      //   backgroundColor: Colors.redAccent,
                      //   textColor: Colors.white,
                      //   smallSize: 25,
                      //   largeSize: 30,
                      //   label: Text(
                      //     '3',
                      //   ),
                      child: const Icon(
                        Icons.notifications_none,
                        size: 30,
                        color: Color(0xFF475269),
                      ),
                      // )
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        width: 250,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none, hintText: 'Search'),
                        ),
                      ),
                      const Spacer(),

                      // const SizedBox(
                      //   width: 15,
                      // ),
                      const Icon(Icons.search_sharp,
                          size: 27, color: Colors.black),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Rowitemwidget(),
                const SizedBox(
                  height: 10,
                ),
                const Allitemwidget()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Homenavigationbar(),
    );
  }
}
