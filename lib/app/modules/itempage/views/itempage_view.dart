import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:nikeshow/app/widget/ItemNavigationBar.dart';

import '../controllers/itempage_controller.dart';

class ItempageView extends GetView<ItempageController> {
  const ItempageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F9FD),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xFF475269).withOpacity(0.3),
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ],
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
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

                        child: const Icon(
                          Icons.favorite_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 230, 7, 7),
                        ),
                        // )
                      ),
                    ]),
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.43,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 230,
                      width: 230,
                      margin: const EdgeInsets.only(right: 70, top: 20),
                      decoration: BoxDecoration(
                          color: const Color(0xFF475269),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xFF475269).withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ]),
                    ),
                    Image.asset(
                      'assets/1.png',
                      height: 350,
                      width: 350,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 4,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 122, 131, 150),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ],
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Nike Shoe',
                          style: TextStyle(
                              color: Color(0xFF475269),
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                        Text(
                          '\$55',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontSize: 28),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (ctx, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'This description of the nike shoe,This description of the nike shoe ,This description',
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Size :',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF475269),
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(5),
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFF475269)
                                              .withOpacity(0.3),
                                          blurRadius: 5,
                                          spreadRadius: 1),
                                    ],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  '${i + 5}',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ItemNavigationBar(),
    );
  }
}
