import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Container(
                        height: 45.h,
                        width: 45.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.h),
                          image: DecorationImage(
                            image: AssetImage('assets/images/profilepic.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Chats',
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Container(
                        height: 30.h,
                        width: 30.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xffEEEEEE)),
                        child: Icon(
                          Icons.camera,
                          size: 28.sp,
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xffEEEEEE)),
                      child: Icon(
                        Icons.camera,
                        size: 28.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, top: 10.h, bottom: 15.h),
              child: Row(
                children: [
                  Container(
                    height: 35.h,
                    width: 230.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Color(0xff555555),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintStyle: TextStyle(color: Color(0xff555555)),
                        hintText: "Search",
                        contentPadding: EdgeInsets.only(top: 0.h),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 75.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                        color: Color(0xffDDDDDD),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      'Unread',
                      style: TextStyle(color: Color(0xff555555)),
                    )),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(10)),
                        height: 60.h,
                        width: 60.h,
                        child: Center(
                            child: Image.asset(
                          'assets/images/videocall.png',
                          height: 38.w,
                          width: 38.w,
                        )),
                      ),
                      Text(
                        'Vish',
                        style: TextStyle(fontSize: 13.sp, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60.h,
                        width: 60.h,
                        child: Stack(
                          children: [
                            Container(
                              height: 55.h,
                              width: 55.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.h),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/profilepic.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 40.h,
                                left: 40.h,
                                child: CircleAvatar(
                                  radius: 10.sp,
                                  backgroundColor: Colors.white,
                                  child: Center(
                                    child: CircleAvatar(
                                      radius: 8.sp,
                                      backgroundColor: Color(0xff36FF00),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Text(
                        'Vish',
                        style: TextStyle(fontSize: 13.sp, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
