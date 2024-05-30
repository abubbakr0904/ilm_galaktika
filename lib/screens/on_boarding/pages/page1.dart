import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ilm_galaktika/utils/images/app_images.dart';

class OnBoardingPage1 extends StatefulWidget {
  const OnBoardingPage1({super.key});

  @override
  State<OnBoardingPage1> createState() => _OnBoardingPage1State();
}

class _OnBoardingPage1State extends State<OnBoardingPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.page1,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 95.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Learn about",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 40.sp,
                          fontFamily: AppImages.fontPoppins),
                    ),
                    Text(
                      "Math",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 50.sp,
                          fontFamily: AppImages.fontPoppins),
                    ),
                  ],
                ),
                Text(
                  "Explore the Marvels of Galaxies: Dive into a cosmic journey to learn about the awe-inspiring galaxies that populate our universe. ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                      fontFamily: AppImages.fontPoppins),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
