import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opzil/widgets/header_bar.dart';

class TextSpeechScreen extends StatefulWidget {
  const TextSpeechScreen({super.key});

  @override
  State<TextSpeechScreen> createState() => _TextSpeechScreenState();
}

class _TextSpeechScreenState extends State<TextSpeechScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(38, 38, 38, 1.000),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerBar(),
            Padding(
              padding: EdgeInsets.only(top: 163.h, left: 32.w),
              child: Container(
                child: Text(
                  "Speaking...",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: "PoppinThin"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 22.h, left: 154.w),
              child: Container(
                width: 80.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(55.r)),
                child: Image.asset("assets/Icon/mic.png")
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 22.h, left: 134.w),
              child: Container(
                width: 125.w,
                height: 34.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Stop",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: "DMSans"),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(239, 191, 4, 1.000)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32.h, left: 32.w),
              child: Container(
                child: Text(
                  "Text Extracted",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: "PoppinThin"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 12.h, left: 32.w),
                child: Container(
                  padding: EdgeInsets.only(top: 15.h, left: 12.w),
                  width: 331.w,
                  height: 235.h,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 253.w),
                        child: ImageIcon(
                          AssetImage("assets/Icon/copy-icon.png"),
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.h),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation\n\nThis is dummy sample text 123",
                          style: TextStyle(
                              color: Color.fromRGBO(180, 180, 180, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "DMSans"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
