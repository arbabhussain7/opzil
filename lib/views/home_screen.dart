import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opzil/widgets/elevated-custom-button.dart';
import 'package:opzil/widgets/header_bar.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 38, 38, 1.000),
      body: Column(
        children: [
          headerBar(),
          Padding(
            padding: EdgeInsets.only(top: 163.h),
            child: Container(
              child: Text(
                "Upload File",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.yellow),
              ),
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 150.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 29.h),
                            child: ImageIcon(
                              AssetImage(
                                "assets/Icon/upload-icon.png",
                              ),
                              size: 40,
                              color: Colors.white,
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 17.h),
                          child: Container(
                            child: Text(
                              "Click to upload your files",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "PoppinThin",
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )),
                Container(
                    width: 150.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 29),
                            child: ImageIcon(
                              AssetImage(
                                "assets/Icon/camera-icon.png",
                              ),
                              size: 40,
                              color: Colors.white,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 17),
                          child: Container(
                            child: Text(
                              "Click to take picture",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "PoppinThin",
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 95.h,
          ),
          ElevatedCustomButton(
            text: "Upload",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
