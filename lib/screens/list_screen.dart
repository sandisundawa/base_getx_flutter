import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:base_getx_flutter/modules/list_screen/list_screen.dart';

class List_screen extends StatelessWidget {
  final List_screenController list_screen;

  const List_screen(this.list_screen, {Key? key}) : super(key: key);

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