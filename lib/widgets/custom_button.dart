import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        "Sign up with Google",
        style: TextStyle(
            fontSize: 12.sp,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontFamily: "DMSans"),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(180, 180, 180, 1.000)),
    );
  }
}
