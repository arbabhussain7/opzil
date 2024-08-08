import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ProfileButtons({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35.h),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffEFBF04),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 170.w,
        height: 44.h,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xff000000)),
        ),
      ),
    );
  }
}
