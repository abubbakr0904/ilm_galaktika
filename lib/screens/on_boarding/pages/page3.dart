import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ilm_galaktika/utils/images/app_images.dart';

class OnBoardingPage3 extends StatefulWidget {
  const OnBoardingPage3({super.key});

  @override
  State<OnBoardingPage3> createState() => _OnBoardingPage3State();
}

class _OnBoardingPage3State extends State<OnBoardingPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.splashBg,
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
                      "Language",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 50.sp,
                          fontFamily: AppImages.fontPoppins),
                    ),
                  ],
                ),
                Text(
                  "Embark on a celestial journey to explore the captivating realms of planets. From the fiery surface of Venus to the icy mysteries of Neptune, this section is your portal to unravel the diverse landscapes and enigmas",
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
