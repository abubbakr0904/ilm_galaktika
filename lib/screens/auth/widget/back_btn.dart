import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget backBtn(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pop(context);
    },
    child: Container(
      width: 70.w,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10.r)),
      padding: EdgeInsets.all(10.w),
      child: Center(
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 20.sp,
        ),
      ),
    ),
  );
}
