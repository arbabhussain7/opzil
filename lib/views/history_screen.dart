import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opzil/widgets/header_bar.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var listvalue = 6;
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromRGBO(38, 38, 38, 1.000),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerBar(),
          Container(
            padding: EdgeInsets.only(top: 92.h, left: 32.w),
            child: Text(
              "Recent Uploads ",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: "PoppinThin",
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(239, 191, 4, 1)),
            ),
          ),
          SizedBox(
            height: 22.h,
            width: 12.w,
          ),
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 82.h),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff151515),
                          borderRadius: BorderRadius.circular(10.r)),
                      width: 393.w,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: listvalue,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(
                                "image001.png",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffFFFFFF),
                                  fontFamily: "DMSans",
                                ),
                              ),
                              subtitle: Text(
                                "last updated 2h ago",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffB4B4B4)),
                              ),
                              leading: Image.asset('assets/Icon/doc-icon.png'),
                              trailing: ImageIcon(
                                  AssetImage("assets/Icon/menu-vertical.png")),
                            );
                          })),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 62.h),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 35.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                                colors: [Color(0xffEFBF04), Color(0x262626)]),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/Icon/Adjust-icon.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Container(
                          width: 35.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                                colors: [Color(0xffEFBF04), Color(0x262626)]),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/Icon/Sort-Amount-Up-icon.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Container(
                          width: 35.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                                colors: [Color(0xffEFBF04), Color(0x262626)]),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/Icon/RecycleBin-icon.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 22.w,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 33.w),
                  child: Container(
                    width: 327.w,
                    height: 42.h,
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        filled: true,
                        fillColor: Color.fromRGBO(217, 217, 217, 1),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
