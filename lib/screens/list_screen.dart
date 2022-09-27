import 'package:base_getx_flutter/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:base_getx_flutter/modules/list_screen/list_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class List_screen extends StatelessWidget {
  final List_screenController list_screen;

  const List_screen(this.list_screen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorValue.backgroundColorLoginScreen,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                child: Obx(() => ListView.builder(
                  itemCount: list_screen.listGenre.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Container(
                            margin: EdgeInsets.all(0.0),
                            child: Container(
                                width: double.infinity,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 190,
                                            child: Text(
                                                list_screen.listGenre.value[index].name ?? ""),
                                          ),
                                          const Icon(
                                            Icons.navigate_next,
                                            color: Colors.black,
                                            size: 24,
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ],
                    );
                  },
                ))),
          ],
        ));
  }
}
