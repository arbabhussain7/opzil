import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opzil/Authentication/signin_screen.dart';
import 'package:opzil/widgets/elevated-custom-button.dart';
import 'package:pinput/pinput.dart';

class VerificationOTP extends StatefulWidget {
  const VerificationOTP({super.key});

  @override
  State<VerificationOTP> createState() => _VerificationOTPState();
}

class _VerificationOTPState extends State<VerificationOTP> {
  final numberController = TextEditingController();
  final defaultPinTheme = PinTheme(
    width: 30.w,
    height: 41.h,
    textStyle: TextStyle(
        fontSize: 15.sp, color: Color(0xffB4B4B4), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Color(0xff151515),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff262626),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: Text(
                "We have sent a code to ",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "PoppinThin",
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 152.w),
              child: Text(
                "frankie23@gmail.com",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffEFBF04),
                    fontSize: 14,
                    fontFamily: "DMSans",
                    fontWeight: FontWeight.w400,
                    color: Color(0xffEFBF04)),
              ),
            ),
            SizedBox(
              height: 83.h,
            ),
            Center(
              child: Text(
                "Please enter the 5-digit code sent to \nyour email address for verification",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "DMSans",
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB4B4B4)),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Pinput(
                defaultPinTheme: defaultPinTheme,
                length: 4,
                autofocus: true,
                onChanged: (value) {
                  setState(() {
                    // var code = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: ElevatedCustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                text: "Continue",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Code not received?",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(180, 180, 180, 1.000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "PoppinThin"),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffEFBF04),
                          fontWeight: FontWeight.w400,
                          fontFamily: "PoppinThin"),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
