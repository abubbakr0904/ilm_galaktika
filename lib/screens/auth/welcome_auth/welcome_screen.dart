import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ilm_galaktika/screens/auth/login_screen/login_screen.dart';
import 'package:ilm_galaktika/screens/auth/register_screen/register_screen.dart';
import 'package:ilm_galaktika/screens/widget/global_button.dart';
import 'package:ilm_galaktika/utils/images/app_images.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.child,
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 30.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Let’s float in",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30.sp,
                          fontFamily: AppImages.fontPoppins),
                    ),
                    Text(
                      "Universe",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 45.sp,
                          fontFamily: AppImages.fontPoppins),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30.sp,
                          fontFamily: AppImages.fontPoppins),
                    ),
                    Text(
                      "Unlock a universe of knowledge and adventure with your pass.",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 19.sp,
                          fontFamily: AppImages.fontPoppins),
                    ),
                    globalBtn(
                      text: "Log In",
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const LogInScreen()));
                      },
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const RegiterScreen()));
                        },
                        child: Text(
                          "Create new account",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                              fontFamily: AppImages.fontPoppins),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
