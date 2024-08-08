import 'package:flutter/material.dart';

class ProfileTextfield extends StatelessWidget {
  const ProfileTextfield({
    super.key,
    required this.hintText,
    required this.controller,
    this.prefixIcon,
    required this.obscureText,
  });

  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  final prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xffB4B4B4)),
        prefixIcon: prefixIcon,
        iconColor: Color(0xffB4B4B4),
      ),
      obscureText: obscureText,
      style: TextStyle(color: Color(0xffB4B4B4)),
    );
  }
}
