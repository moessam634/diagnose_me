import 'package:diagnose_me/app/app_images.dart';
import 'package:diagnose_me/app/app_words.dart';
import 'package:diagnose_me/presentation/components/custom_button.dart';
import 'package:diagnose_me/presentation/screens/intro_screen/intro_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroductionScreen1 extends StatelessWidget {
  const IntroductionScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 167.h, left: 51.w, right: 55.w),
            child: Image.asset(
              AppImages.pic1,
              width: 269.w,
              height: 266.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 70.h, left: 58.w, right: 58.w),
            child: const Text(
              AppWords.text1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 113.h, left: 70.w, right: 70.w),
            child: CustomButton(buttonText: AppWords.next,nextScreen: const IntroductionScreen2(),),
          ),
        ],
      ),
    );
  }
}
