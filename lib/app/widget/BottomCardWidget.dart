import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCardWidget extends StatelessWidget {
  const BottomCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Color(0xFFCEDDEE),
          boxShadow: [
            BoxShadow(blurRadius: 5, spreadRadius: 1, color: Color(0xFF425769))
          ],
        ),
        height: 600,
        padding: const EdgeInsets.all(20),
        // color: const Color(0xFFCEDDEE),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 1; i <= 4; i++)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xFF425769).withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 5)
                            ]),
                        margin: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 5),
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        height: 140,
                        child: Row(
                          children: [
                            InkWell(
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 90,
                                    margin: const EdgeInsets.only(
                                        top: 15, left: 10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF425769),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 15),
                                    child: Image.asset(
                                      'assets/$i.png',
                                      height: 130,
                                      width: 120,
                                      fit: BoxFit.contain,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Nike Shoe',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: const Color(0xFF475269)
                                                      .withOpacity(0.3),
                                                  spreadRadius: 1,
                                                  blurRadius: 5)
                                            ]),
                                        child: const Icon(
                                          CupertinoIcons.minus,
                                          color: Color(0xFF425769),
                                        ),
                                      ),
                                      Container(
                                          margin: const EdgeInsets.all(10),
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                          ),
                                          child:
                                              const Center(child: Text('20'))),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: const Color(0xFF475269)
                                                      .withOpacity(0.3),
                                                  spreadRadius: 1,
                                                  blurRadius: 5)
                                            ]),
                                        child: const Icon(
                                          Icons.add,
                                          color: Color(0xFF425769),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: const Color(0xFF425769)
                                                  .withOpacity(0.3),
                                              spreadRadius: 1,
                                              blurRadius: 5)
                                        ]),
                                    child: const Icon(Icons.delete,
                                        color: Colors.redAccent, size: 20),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    '\$50',
                                    style: TextStyle(
                                        color: Colors.redAccent, fontSize: 18),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
