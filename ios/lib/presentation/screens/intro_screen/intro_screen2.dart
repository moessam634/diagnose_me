import 'package:diagnose_me/app/app_images.dart';
import 'package:diagnose_me/app/app_words.dart';
import 'package:diagnose_me/presentation/components/custom_button.dart';
import 'package:diagnose_me/presentation/screens/intro_screen/intro_screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroductionScreen2 extends StatelessWidget {
  const IntroductionScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 153.h, left: 37.w, right: 51.w),
            child: Image.asset(
              AppImages.doctorPro,
              width: 287.w,
              height: 280.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 70.h, left: 58.w, right: 58.w),
            child: const Text(
              AppWords.text2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 113.h, left: 70.w, right: 70.w),
            child: CustomButton(buttonText: AppWords.next,nextScreen: const IntroductionScreen3()),
          )
        ],
      ),
    );
  }
}
