import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ilm_galaktika/utils/images/app_images.dart';

class OnBoardingPage4 extends StatefulWidget {
  const OnBoardingPage4({super.key});

  @override
  State<OnBoardingPage4> createState() => _OnBoardingPage4State();
}

class _OnBoardingPage4State extends State<OnBoardingPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.page4,
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
                      "Physics",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 50.sp,
                          fontFamily: AppImages.fontPoppins),
                    ),
                  ],
                ),
                Text(
                  "Stellar Discoveries: Embark on an illuminating voyage to uncover the secrets of stars. From the blazing birth of stars to the enchanting constellations that adorn our night sky",
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
