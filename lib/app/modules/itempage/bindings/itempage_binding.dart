import 'package:get/get.dart';

import '../controllers/itempage_controller.dart';

class ItempageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItempageController>(
      () => ItempageController(),
    );
  }
}
