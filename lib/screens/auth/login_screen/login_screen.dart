import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilm_galaktika/screens/auth/widget/back_btn.dart';
import 'package:ilm_galaktika/screens/auth/widget/global_text_field.dart';
import 'package:ilm_galaktika/screens/home_screen/home_screen.dart';
import 'package:ilm_galaktika/screens/widget/global_button.dart';
import 'package:ilm_galaktika/utils/constants/app_contants.dart';
import 'package:ilm_galaktika/utils/images/app_images.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final _formKeyTwo = GlobalKey<FormState>();
  final _formKeyThree = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.authBg,
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    backBtn(context),
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: AppImages.fontPoppins,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: AppImages.fontPoppins,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(height: 100.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GlobalTextField(
                        title: "Email",
                        icon: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(AppImages.emailIcon)),
                        controller: email,
                        validate: AppConstants.emailRegExp,
                        validateText: "Invalid email",
                        validateEmptyText: "Enter email",
                        formKey: _formKeyTwo,
                        type: TextInputType.emailAddress,
                        onChanged: (v) {
                          setState(() {});
                        }),
                    SizedBox(height: 10.h,),
                    GlobalTextField(
                        title: "Password",
                        icon: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(AppImages.lock)),
                        controller: password,
                        validate: AppConstants.emailRegExp,
                        validateText: "Invalid password",
                        validateEmptyText: "Enter password",
                        formKey: _formKeyThree,
                        type: TextInputType.text,
                        onChanged: (v) {
                          setState(() {});
                        }),
                    globalBtn(
                      text: "Log In",
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const HomeScreen()),
                            (route) => false);
                      },
                    ),
                    SizedBox(height: 30.h,),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot password ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                              fontFamily: AppImages.fontPoppins),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
