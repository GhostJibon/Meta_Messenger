import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuggestedPerson extends StatelessWidget {
  SuggestedPerson(this.profilepic, this.name);
  String profilepic;
  String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Container(
              height: 45.h,
              width: 45.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.h),
                image: DecorationImage(
                  image: AssetImage(profilepic),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
