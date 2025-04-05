import 'package:flutter/material.dart';

class BottomCardWidget extends StatelessWidget {
  const BottomCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        color: Color(0xFFCEDDEE),
        boxShadow: [
          BoxShadow(blurRadius: 5, spreadRadius: 1, color: Color(0xFF425769))
        ],
      ),
      height: 600,
      padding: const EdgeInsets.all(10),
      // color: const Color(0xFFCEDDEE),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 500,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF425769).withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5)
                        ]),
                    margin:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
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
                                margin:
                                    const EdgeInsets.only(top: 15, left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF425769),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Image.asset(
                                'assets/1.png',
                                height: 130,
                                width: 120,
                                fit: BoxFit.contain,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Nike Shoe',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xFF475269)
                                                  .withOpacity(0.3),
                                              spreadRadius: 1,
                                              blurRadius: 5)
                                        ]),
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xFF425769),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.all(10),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(0xFF475269)
                                                    .withOpacity(0.3),
                                                spreadRadius: 1,
                                                blurRadius: 5)
                                          ]),
                                      child: Center(child: Text('20'))),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xFF475269)
                                                  .withOpacity(0.3),
                                              spreadRadius: 1,
                                              blurRadius: 5)
                                        ]),
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xFF425769),
                                    ),
                                  )
                                ],
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
    );
  }
}
