import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:base_getx_flutter/modules/login_screen/login_screen.dart';

class Login_screen extends StatelessWidget {
  final Login_screenController login_screen;

  const Login_screen(this.login_screen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Users'),
      ),
      body: Obx(
        () {
          return Container();
        },
      ),
    );
  }
}