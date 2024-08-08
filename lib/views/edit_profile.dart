import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opzil/views/profile_setting_screen.dart';
import 'package:opzil/widgets/elevated-custom-button.dart';
import 'package:opzil/widgets/profile_textfield.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 38, 38, 1.000),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 82.h,
                ),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "PoppinThin",
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF)),
                ),
              ),
              SizedBox(
                height: 33.h,
              ),
              Stack(
                children: [
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
                  Padding(
                    padding: EdgeInsets.only(top: 73.h, left: 82.w),
                    child: Container(
                      child: Image.asset(
                        "assets/Icon/plus-icon.png",
                        width: 25.w,
                        height: 25.h,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15.h),
              Text(
                "Select your profile picture",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "DMSans",
                    fontWeight: FontWeight.w400,
                    color: Color(0xffD9D9D9)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 44.h),
                child: ProfileTextfield(
                  controller: nameController,
                  hintText: 'FranklinTubo',
                  prefixIcon: Icon(Icons.person_2_outlined),
                  obscureText: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.w,
                ),
                child: ProfileTextfield(
                  controller: emailController,
                  hintText: 'frankie123@gmail.com',
                  prefixIcon: Icon(Icons.person_2_outlined),
                  obscureText: false,
                ),
              ),
              SizedBox(
                height: 82.h,
              ),
              ElevatedCustomButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileSettingScreen()),
                    );
                  },
                  text: "Update"),
            ],
          ),
        ),
      ),
    );
  }
}
