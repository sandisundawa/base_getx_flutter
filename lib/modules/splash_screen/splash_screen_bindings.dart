import 'package:get/get.dart';

import 'package:base_getx_flutter/modules/splash_screen/splash_screen.dart';

class Splash_screenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Splash_screenController(Splash_screenService()));
  }
}