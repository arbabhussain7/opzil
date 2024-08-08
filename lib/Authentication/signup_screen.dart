import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:opzil/Authentication/signin_screen.dart';
import 'package:opzil/Authentication/verification.dart';
import 'package:opzil/widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/bg-image.png",
                ),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 337.w,
                height: 444.h,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(21, 21, 21, 1.000),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.h),
                      child: Text(
                        "Create your Account",
                        style: TextStyle(
                            fontFamily: "PoppinThin",
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: CustomTextField(
                          controller: nameController,
                          text: "Name",
                          PrefixIcon: Icons.person_2_outlined,
                          suffixIcon: null,
                          inputType: TextInputType.name),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: CustomTextField(
                          controller: emailController,
                          text: "Email",
                          PrefixIcon: Icons.email_outlined,
                          suffixIcon: null,
                          inputType: TextInputType.emailAddress),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: CustomTextField(
                        controller: passwordController,

                        text: "Password",
                        PrefixIcon: Icons.lock_outline_rounded,
                        // suffixIcon: togglePassword(),
                        obscureText: true,
                        inputType: TextInputType.visiblePassword,
                        suffixIcon: null,
                        secureText: true,
                        isPassword: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 193.w,
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget password?",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(180, 180, 180, 1.000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "DMSans"),
                          )),
                    ),
                    Container(
                      width: 195.w,
                      height: 34.h,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerificationOTP()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: "DMSans"),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color.fromRGBO(239, 191, 4, 1.000)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account?",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(180, 180, 180, 1.000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "PoppinThin"),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen()),
                                );
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "PoppinThin"),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
