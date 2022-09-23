import 'package:get/get.dart';

import 'package:base_getx_flutter/modules/login_screen/login_screen.dart';

class Login_screenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Login_screenController(Login_screenService()));
  }
}