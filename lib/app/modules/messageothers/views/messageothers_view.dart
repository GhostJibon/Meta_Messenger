import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:messengerclone/app/common/fbColorText.dart';
import 'package:messengerclone/app/common/postDevider.dart';

import '../controllers/messageothers_controller.dart';

class MessageothersView extends GetView<MessageothersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 10.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios_new),
                          Text(
                            'New message ',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'To: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11.sp,
                                  color: Color(0xff555555)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1.h),
                              child: Container(
                                height: 15.h,
                                width: 160.w,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Type a name or group",
                                    hintStyle: TextStyle(
                                        fontSize: 10.sp,
                                        color: Color(0xff555555)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w, top: 10.h),
                    child: Image.asset('assets/images/lockicon.png'),
                  )
                ],
              ),
            ),
            PostDevider(),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 10.h, bottom: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GroupAndCall(
                      'assets/images/newgroup.png', 'Create an new Group'),
                  GroupAndCall(
                      'assets/images/newvideo.png', 'Create an new Group'),
                ],
              ),
            ),
            PostDevider(),
          ],
        ),
      ),
    );
  }
}

class GroupAndCall extends StatelessWidget {
  GroupAndCall(this.logolocation, this.texts);
  final String logolocation;
  final String texts;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Row(
        children: [
          Image.asset(logolocation),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: FbColorText(texts, 15.sp, FontWeight.w700),
          )
        ],
      ),
    );
  }
}
