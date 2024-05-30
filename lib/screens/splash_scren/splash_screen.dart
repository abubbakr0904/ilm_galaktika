import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ilm_galaktika/data/local/storage/local_storage.dart';
import 'package:ilm_galaktika/screens/auth/welcome_auth/welcome_screen.dart';
import 'package:ilm_galaktika/screens/on_boarding/on_boarding.dart';
import 'package:ilm_galaktika/utils/images/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  init()async{
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
      bool isNewUser = StorageRepository.getBool(key: "is_new_user");
      if (isNewUser) {
        Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context)=> const WelcomeScreen()), (route) => false);
      } else {
        Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context)=> const OnBoardingScreen()), (route) => false);
      }
    // Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context)=> const OnBoardingScreen()), (route) => false);
  }

  @override
  void initState() {
    init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.splashBg,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            fit : BoxFit.cover
          ),
          Container(
            width: double.infinity,
            color : Colors.white.withOpacity(0.3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.r),
                  child: Image.asset(
                    AppImages.logo,
                    width: 200.w,
                    height: 200.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15.h,),
                Text(
                  "Ilm Galaktika",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: AppImages.fontPoppins
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
