import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messengerclone/app/common/fbColorText.dart';

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
