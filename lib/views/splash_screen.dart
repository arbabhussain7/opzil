// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:opzil/Authentication/signup_screen.dart';
// import 'package:opzil/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => SignUpScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 38, 38, 1.000),
      body: Container(
        width: Get.width,
        child: Stack(
          children: [
            Positioned(
              left: -161.w,
              top: -15.h,
              child: Container(
                width: 455.w,
                height: 462.h,
                // color: Colors.yellow,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(239, 191, 4, 1.000),
                ),
              ),
            ),
            Positioned(
              top: 294.h,
              left: 40.w,
              // right: -150.w,
              child: Container(
                width: 385.w,
                height: 363.h,
                // color: Colors.yellow,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(239, 191, 4, 1.000),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "OPZIL",
                    style: TextStyle(
                        fontSize: 48.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Colors.white),
                  ),
                  Text(
                    "Start Scanning Now!",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: "DMSans",
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
