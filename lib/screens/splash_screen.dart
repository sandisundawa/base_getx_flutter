import 'package:base_getx_flutter/config/assets.dart';
import 'package:base_getx_flutter/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:base_getx_flutter/modules/splash_screen/splash_screen.dart';

class Splash_screen extends StatelessWidget {
  final Splash_screenController splash_screen;

  const Splash_screen(this.splash_screen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: ColorValue.backgroundColorLoginScreen,
        child: Center(
          child: Image.asset(
            AssetValue.logo,
            height: 85,
            width: 300,
          ),
        ),
      )
    );
  }
}