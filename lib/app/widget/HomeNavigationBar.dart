import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikeshow/app/modules/home/controllers/home_controller.dart';
import 'package:nikeshow/app/widget/BottomCardWidget.dart';

class Homenavigationbar extends StatelessWidget {
  @override
  Widget build(context) {
    HomeController homeController = new HomeController();
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
          color: Color(0xFF425769),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Icon(Icons.category_outlined, size: 30, color: Colors.white),
        InkWell(
            onTap: () {
              showBottomSheet(
                  context: context,
                  builder: (context) {
                    homeController.bottombarvisible = 1;
                    return BottomCardWidget();
                  });
            },
            child:
                const Icon(CupertinoIcons.cart, size: 30, color: Colors.white)),
        const Icon(Icons.favorite_border_outlined,
            size: 30, color: Colors.white),
        const Icon(Icons.person, size: 30, color: Colors.white),
      ]),
    );
  }
}
