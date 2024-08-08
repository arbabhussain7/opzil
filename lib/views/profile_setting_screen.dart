import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opzil/widgets/elevated-custom-button.dart';
import 'package:opzil/widgets/profile_custom_button.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({super.key});

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff262626),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 82.h,
              ),
              child: Text(
                "Profile Settings",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "PoppinThin",
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 28.h),
              child: Container(
                width: 353.w,
                height: 158.h,
                decoration: BoxDecoration(
                    color: Color(0xff151515),
                    borderRadius: BorderRadius.circular(20.r)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12.h, left: 22.w),
                      child: Container(
                        child: const Row(
                          children: [
                            Text(
                              "Reset",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "PoppinThin",
                                  color: Color(0xffFFFFFF)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Password?",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "PoppinThin",
                                  color: Color(0xffEFBF04)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 33.w, top: 6.h),
                      child: Text(
                        "A code will be sent to your email for verification",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB4B4B4)),
                      ),
                    ),
                    ProfileButtons(
                      onPressed: () {},
                      text: "Send Code",
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              width: 353.w,
              height: 158.h,
              decoration: BoxDecoration(
                  color: Color(0xff151515),
                  borderRadius: BorderRadius.circular(20.r)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 12.h, right: 180.w),
                    child: Text(
                      "Delete Account",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7.h,
                    ),
                    child: Text(
                      "The account will be permanently deleted after 24hrs.",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB4B4B4)),
                    ),
                  ),
                  ProfileButtons(
                    onPressed: () {},
                    text: "Delete Account",
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              width: 353.w,
              height: 158.h,
              decoration: BoxDecoration(
                  color: Color(0xff151515),
                  borderRadius: BorderRadius.circular(20.r)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 12.h, right: 225.w),
                    child: Text(
                      "Premium ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7.h,
                    ),
                    child: Text(
                      "Renewed subscription will be billed at standard rate ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB4B4B4)),
                    ),
                  ),
                  ProfileButtons(
                    onPressed: () {},
                    text: "Unsubscribe",
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "or",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "PoppinThin",
                  color: Color(0xffFFFFFF)),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedCustomButton(
              onPressed: () {},
              text: "Logout",
            )
          ],
        ),
      ),
    );
  }
}
