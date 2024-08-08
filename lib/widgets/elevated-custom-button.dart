import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedCustomButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;

  const ElevatedCustomButton({super.key, required this.text, this.onPressed});

  @override
  State<ElevatedCustomButton> createState() => _ElevatedCustomButtonState();
}

class _ElevatedCustomButtonState extends State<ElevatedCustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 195.w,
      height: 34.h,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.text, // Use the text variable here
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontFamily: "DMSans",
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(239, 191, 4, 1.000),
        ),
      ),
    );
  }
}
