import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opzil/views/edit_profile.dart';
import 'package:opzil/widgets/profile_textfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff262626),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 393.w,
              height: 269.h,
              decoration: BoxDecoration(
                color: Color(0xffEFBF04),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 44.h,
                  ),
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xff8E8E8E), width: 4)),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/home-profile.png",
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Franklin Tubo",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: "PoppinThin"),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Signed in with Google",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontFamily: "PoppinsItalic"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 22.h,
                    ),
                    child: Container(
                      width: 125.w,
                      height: 34.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: "DMSans"),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff8E8E8E)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 22.h, right: 132.w),
                    child: Text(
                      "Account Details",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontFamily: "DMSans"),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.w, vertical: 12.h),
                    child: ProfileTextfield(
                      controller: nameController,
                      hintText: 'FranklinTubo',
                      prefixIcon: Icon(Icons.person_2_outlined),
                      obscureText: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.w, vertical: 12.h),
                    child: ProfileTextfield(
                      controller: emailController,
                      hintText: "frankie22@gmail.com",
                      prefixIcon: Icon(Icons.email_outlined),
                      obscureText: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.w, vertical: 12.h),
                    child: ProfileTextfield(
                      controller: passwordController,
                      hintText: "•••••••••",
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25.h),
                    child: Container(
                      width: 325.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                          color: Color(0xff151515),
                          border: Border.all(
                            color: Color(0xff8E8E8E),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Profile Settings",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xffFFFFFF),
                                  fontFamily: "DMSans",
                                  fontWeight: FontWeight.w400),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EditProfileScreen()),
                                );
                              },
                              child: Image.asset(
                                "assets/Icon/nextpage-icon.png",
                                width: 17,
                                height: 17,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: Container(
                      width: 325.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                          color: Color(0xff151515),
                          border: Border.all(
                            color: Color(0xff8E8E8E),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "App Settings",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xffFFFFFF),
                                  fontFamily: "DMSans",
                                  fontWeight: FontWeight.w400),
                            ),
                            Image.asset(
                              "assets/Icon/nextpage-icon.png",
                              width: 17,
                              height: 17,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 22.h),
              child: Container(
                width: 247.w,
                height: 45.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Icon/lightingbolt-icon.png",
                        width: 17.w,
                        height: 17.h,
                      ),
                      Text(
                        "Go Premium ",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontFamily: "DMSans"),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffEFBF04)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
