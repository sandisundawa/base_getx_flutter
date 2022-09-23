import 'package:base_getx_flutter/config/colors.dart';
import 'package:base_getx_flutter/config/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:base_getx_flutter/modules/login_screen/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/routes.dart';
import '../widget/Button.dart';

class Login_screen extends StatelessWidget {
  final Login_screenController login_screen;

  const Login_screen(this.login_screen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorValue.backgroundColorLoginScreen,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: ListView(
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(64.h),
                    Padding(
                      padding: EdgeInsets.only(left: 34.w),
                      child: Text(
                        StringValue.login_text,
                        style: GoogleFonts.poppins(
                            fontSize: 22.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Gap(28.h),
                    Padding(
                      padding: EdgeInsets.only(left: 34.w),
                      child: Text(
                        "Selamat datang",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    Gap(46.h),
                    Form(
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 41.w),
                              child: TextFormField(
                                initialValue: "username",
                              )
                          ),
                          Gap(35.2.h),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 41.w),
                              child: TextFormField(
                                initialValue: "password",
                              )
                          )
                        ],
                      ),
                    ),
                    Gap(22.52.h),
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            // Get.toNamed(Routes.forgot_password_screen);
                          },
                          child: Text(
                            "Lupa password",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        )
                    ),
                    Gap(
                        10.h
                    ),
                  ],
                )
              ],
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.w),
                child: Button(text: "Login",
                    color: Colors.blue,
                    onPress: () {
                      Get.toNamed(Routes.list_screen);
                    },
                    height: 50,
                    radius: 5,
                    textSize: 16,
                    textColor: Colors.black,
                    fontWeight: FontWeight.w500,
                    borderColor: Colors.deepOrange),
              ),
            ),
            Gap(
                22.h
            ),
          ],
        )
    );
  }
}