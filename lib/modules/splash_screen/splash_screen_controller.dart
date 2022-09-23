import 'package:get/get.dart';

import 'package:base_getx_flutter/modules/splash_screen/splash_screen.dart';

import '../../routes/routes.dart';

class Splash_screenController extends GetxController {

  final Splash_screenService _service;

  @override
  Future<void> onInit() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.offAllNamed(Routes.login_screen);
    super.onInit();
  }

  Splash_screenController(this._service);

}