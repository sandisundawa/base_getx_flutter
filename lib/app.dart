import 'package:base_getx_flutter/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'config/themes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          getPages: routes,
          debugShowCheckedModeBanner: false,
          title: "Base GetX",
          theme: appTheme,
          initialRoute: Routes.root,
        );
      },
    );
  }

}