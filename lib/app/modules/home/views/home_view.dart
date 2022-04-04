import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Container(
                      height: 25.h,
                      width: 25.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.h),
                          color: Color(0xffEEEEEE)),
                      child: Icon(Icons.camera),
                    ),
                  ),
                  Container(
                    height: 25.h,
                    width: 25.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.h),
                        color: Color(0xffEEEEEE)),
                    child: Icon(Icons.camera),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
