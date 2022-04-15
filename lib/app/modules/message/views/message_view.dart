import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:messengerclone/app/common/directmessage.dart';
import 'package:messengerclone/app/common/onlinepreson.dart';
import 'package:messengerclone/app/common/personmessage.dart';
import 'package:messengerclone/app/routes/app_pages.dart';

import '../controllers/message_controller.dart';

class MessageView extends GetView<MessageController> {
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
                        height: 35.h,
                        width: 35.h,
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
                        child: Image.asset(
                          'assets/images/cameraicon.png',
                          height: 25.h,
                          width: 25.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xffEEEEEE)),
                      child: Image.asset(
                        'assets/images/editicon.png',
                        height: 25.h,
                        width: 25.h,
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
        child: SingleChildScrollView(
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEEEEEE),
                                borderRadius: BorderRadius.circular(10)),
                            height: 55.h,
                            width: 55.h,
                            child: Center(
                                child: Image.asset(
                              'assets/images/videocall.png',
                              height: 38.w,
                              width: 38.w,
                            )),
                          ),
                          Text(
                            'Vish',
                            style:
                                TextStyle(fontSize: 13.sp, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    OnlinePerson('assets/images/profilepic.png', 'Vish'),
                    OnlinePerson('assets/images/profilepic.png', 'Vish'),
                    OnlinePerson('assets/images/profilepic.png', 'Vish'),
                    OnlinePerson('assets/images/profilepic.png', 'Vish'),
                    OnlinePerson('assets/images/profilepic.png', 'Vish'),
                    OnlinePerson('assets/images/profilepic.png', 'Vish'),
                    OnlinePerson('assets/images/profilepic.png', 'Vish'),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                    Chatperson(
                      'assets/images/profilepic.png',
                      'Rockey Patner',
                      'Bye',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
