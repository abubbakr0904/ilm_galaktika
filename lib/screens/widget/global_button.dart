import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/images/app_images.dart';

Widget globalBtn({required String text  , required VoidCallback onTap}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 15.h),
        padding: EdgeInsets.all(15.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color : Colors.white
        ),
        child : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 21.sp,
                  fontFamily: AppImages.fontPoppins),
            ),
            SizedBox(width: 15.w,),
            const Icon(
              Icons.arrow_forward,
              color: Colors.black,
              size: 30,
            )
          ],
        )
    ),
  );
}