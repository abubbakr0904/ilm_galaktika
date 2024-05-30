import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ilm_galaktika/screens/auth/welcome_auth/welcome_screen.dart';
import 'package:ilm_galaktika/screens/on_boarding/pages/page1.dart';
import 'package:ilm_galaktika/screens/on_boarding/pages/page2.dart';
import 'package:ilm_galaktika/screens/on_boarding/pages/page3.dart';
import 'package:ilm_galaktika/screens/on_boarding/pages/page4.dart';

import '../../data/local/storage/local_storage.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {},
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                OnBoardingPage1(),
                OnBoardingPage2(),
                OnBoardingPage3(),
                OnBoardingPage4()
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: SizedBox(
        // width: 100.w,
        // height: 100.w,
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
          backgroundColor: Colors.white,
          onPressed: () {
            if (activeIndex == 3) {
              StorageRepository.setBool(
                key: "is_new_user",
                value: true,
              ).then(
                (value) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const WelcomeScreen()),
                      (route) => false);
                },
              );
            } else {
              activeIndex += 1;
              controller.animateToPage(
                activeIndex,
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear,
              );
            }
          },
          child: Icon(
            Icons.arrow_forward,
            color: Colors.black,
            size: 30.sp,
          ),
        ),
      ),
    );
  }
}
