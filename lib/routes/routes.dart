import 'package:base_getx_flutter/modules/list_screen/list_screen.dart';
import 'package:base_getx_flutter/modules/login_screen/login_screen.dart';
import 'package:base_getx_flutter/modules/splash_screen/splash_screen.dart';
import 'package:base_getx_flutter/screens/list_screen.dart';
import 'package:base_getx_flutter/screens/login_screen.dart';
import 'package:base_getx_flutter/screens/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const String root = '/';
  static const String login_screen = "/login_screen";
  static const String list_screen = "/list_screen";
}

final List<GetPage> routes = [
  GetPage(name: Routes.root, page: () => Splash_screen(Get.find()), binding: Splash_screenBindings(), transition: Transition.rightToLeft, transitionDuration: const Duration(milliseconds: 300)),
  GetPage(name: Routes.login_screen, page: () => Login_screen(Get.find()), binding: Login_screenBindings(), transition: Transition.rightToLeft, transitionDuration: const Duration(milliseconds: 300)),
  GetPage(name: Routes.list_screen, page: () => List_screen(Get.find()), binding: List_screenBindings(), transition: Transition.rightToLeft, transitionDuration: const Duration(milliseconds: 300)),

];