import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:opzil/views/edit_profile.dart';
// import 'package:opzil/views/profile_setting_screen.dart';
import 'package:opzil/views/splash_screen.dart';
// import 'package:opzil/views/profile_screen.dart';
// import 'package:opzil/views/splash_screen.dart';
// import 'package:opzil/Naviagation/bottom_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852), // Set the design size (width, height)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          theme: ThemeData(useMaterial3: true),
        );
      },
    );
  }
}
