import 'package:diagnose_me/app/app_colors.dart';
import 'package:diagnose_me/app/app_images.dart';
import 'package:diagnose_me/presentation/components/custom_button.dart';
import 'package:diagnose_me/presentation/components/custom_otp_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/app_words.dart';
import '../congratulations_screen/congratulations_screen.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final defaultPinTheme = PinTheme(
    //   width: 53.w,
    //   height: 53.h,
    //   margin: EdgeInsets.symmetric(horizontal: 8.w),
    //   decoration: BoxDecoration(
    //     boxShadow: const [
    //       BoxShadow(
    //         color: Colors.grey,
    //         blurRadius: .2, // soften the shadow
    //         spreadRadius: .2, //extend the shadow
    //         offset: Offset(
    //           0.5, // Move to right 5  horizontally
    //           0.5, // Move to bottom 5 Vertically
    //         ),
    //       )
    //     ],
    //     color: AppColors.kOtpColor,
    //     borderRadius: BorderRadius.circular(15.r),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kBackgroundColor,
        title: const Text(
          AppWords.verificationCode,
          style: TextStyle(color: AppColors.kBlackColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.h),
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(AppImages.verify, height: 176.sp, width: 292.sw),
              Container(
                margin: EdgeInsets.only(top: 73.h),
                child: const Text(
                  AppWords.otpSent,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 54.h),
                child: CustomOtpBox(),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.h),
                child: const Text(
                  AppWords.resendInSec,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 33.h),
                child: CustomButton(
                    nextScreen: const CongratulationScreen(),
                    buttonText: AppWords.verify),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
