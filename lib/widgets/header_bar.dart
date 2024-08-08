import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class headerBar extends StatelessWidget {
  const headerBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xffEFBF04),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r)),
        ),
        width: 393.w,
        height: 113.h,
        child: Padding(
          padding: EdgeInsets.only(top: 22.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 33.w),
                child: Container(
                  width: 55.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xff8E8E8E), width: 2)),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/home-profile.png",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h, left: 12.w),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Franklin Tubo",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppinsbold"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 40.w),
                        child: Text(
                          "Sign out",
                          style: TextStyle(
                              fontSize: 10..sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    top: 6.h,
                    left: 4.w,
                  ),
                  child: ImageIcon(
                    AssetImage(
                      "assets/Icon/dropdown-arrow.png",
                    ),
                    size: 10,
                  )),
              Padding(
                padding: EdgeInsets.only(left: 146.w),
                child: ImageIcon(
                  AssetImage(
                    "assets/Icon/bell.png",
                  ),
                  size: 18,
                ),
              ),
            ],
          ),
        ));
  }
}
