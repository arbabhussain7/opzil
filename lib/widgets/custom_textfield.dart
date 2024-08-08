import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  TextEditingController controller;

  IconData PrefixIcon;
  IconData? suffixIcon;
  bool obscureText;
  bool isPassword;
  bool secureText;

  TextCapitalization textCapitalization;
  final ImageIcon;
  final TextInputType inputType;
  final String text;

  CustomTextField(
      {super.key,
      required this.controller,
      required this.PrefixIcon,
      this.obscureText = false,
      this.textCapitalization = TextCapitalization.none,
      required this.inputType,
      this.ImageIcon,
      this.isPassword = false,
      required this.suffixIcon,
      this.secureText = false,
      required this.text});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 14),
        child: TextField(
          enabled: true,
          controller: widget.controller,
          textCapitalization: widget.textCapitalization,
          maxLength: 32,
          maxLines: 1,
          obscureText: widget.obscureText,
          keyboardType: widget.inputType,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            hintText: widget.text,
            hintStyle: TextStyle(color: Color(0xffB4B4B4)),
            prefixIcon: Icon(widget.PrefixIcon),
            suffixIcon: widget.isPassword
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.secureText = !widget.secureText;
                      });
                      print(widget.secureText);
                    },
                    child: widget.secureText
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  )
                : null,
            // isDense: true,
            labelText: " ",
            counterText: "",
            labelStyle: TextStyle(color: Colors.white),
          ),
        ));
  }
}
