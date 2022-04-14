import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnlinePerson extends StatelessWidget {
  OnlinePerson(this.imagelocation, this.personname, this.ontap);
  final String imagelocation;
  final String personname;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.w),
      child: GestureDetector(
        onTap: ontap,
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
                        image: AssetImage(imagelocation),
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
              personname,
              style: TextStyle(fontSize: 13.sp, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
