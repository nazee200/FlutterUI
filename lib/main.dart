import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  checkAsset();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFCEDDEE)),
    ),
  );
}

void checkAsset() async {
  try {
    await rootBundle.load('assets/1.png');
    print('Asset exists!');
  } catch (e) {
    print('Asset not found: $e');
  }
}
