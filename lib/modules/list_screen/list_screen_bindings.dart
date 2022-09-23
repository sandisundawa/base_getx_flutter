import 'package:get/get.dart';

import 'package:base_getx_flutter/modules/list_screen/list_screen.dart';

class List_screenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => List_screenController(List_screenService()));
  }
}