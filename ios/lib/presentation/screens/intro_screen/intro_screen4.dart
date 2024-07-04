import 'package:diagnose_me/app/app_images.dart';
import 'package:diagnose_me/app/app_words.dart';
import 'package:diagnose_me/presentation/components/custom_button.dart';
import 'package:diagnose_me/presentation/screens/signin_screen/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroductionScreen4 extends StatelessWidget {
  const IntroductionScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 153.h, left: 53.w, right: 54.w),
            child: Image.asset(
              AppImages.pic3,
              width: 268.w,
              height: 283.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 111.h, left: 87.w, right: 87.w),
            child: const Text(
              AppWords.text3,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 36.h, left: 70.w, right: 70.w),
            child:  CustomButton(buttonText: AppWords.next,nextScreen: const SignInScreen(),),
          ),
          Padding(
            padding: EdgeInsets.only(top: 29.h, left: 70.w, right: 70.w),
            child: CustomButton(buttonText: AppWords.next,nextScreen: const SignInScreen(),),
          ),
        ],
      ),
    );
  }
}
