import 'package:diagnose_me/app/app_images.dart';
import 'package:diagnose_me/presentation/components/custom_button.dart';
import 'package:diagnose_me/presentation/components/custom_drop_down_button.dart';
import 'package:diagnose_me/presentation/components/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_words.dart';
import '../verification_code/verification_code.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: AppColors.kBlackColor,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 16,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.kBackgroundColor,
        centerTitle: true,
        title: const Text(
          AppWords.signUp,
          style: TextStyle(
            color: AppColors.kBlackColor,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 30.w,
                ),
                child: const Text(
                  AppWords.firstName,
                  style: TextStyle(
                    color: AppColors.kBlackColor,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90.w),
                child: const Text(
                  AppWords.lastName,
                  style: TextStyle(
                    color: AppColors.kBlackColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                  ),
                  child: CustomTextField(
                    hintText: AppWords.enterFirstName,
                    width: 150,
                  )),
              SizedBox(
                width: 14.w,
              ),
              Padding(
                  padding: EdgeInsets.only(right: 30.w),
                  child: CustomTextField(
                    hintText: AppWords.enterLastName,
                    width: 150,
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 30.h),
            child: const Text(
              AppWords.userName,
              style: TextStyle(
                color: AppColors.kBlackColor,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: CustomTextField(
                hintText: AppWords.enterUserName,
                width: 313,
              )),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 30.h),
            child: const Text(
              AppWords.email,
              style: TextStyle(
                color: AppColors.kBlackColor,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: CustomTextField(
                hintText: AppWords.emailExample,
                width: 313,
              )),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 30.h),
            child: const Text(
              AppWords.password,
              style: TextStyle(
                color: AppColors.kBlackColor,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: CustomTextField(
                hintText: AppWords.yourPassword,
                width: 313,
                suffixIcon: const Icon(CupertinoIcons.eye_slash),
              )),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 30.h),
            child: const Text(
              AppWords.confirmPassword,
              style: TextStyle(
                color: AppColors.kBlackColor,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: CustomTextField(
                width: 313,
                hintText: AppWords.confirmYourPassword,
                suffixIcon: const Icon(CupertinoIcons.eye_slash),
              )),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 28.h),
            child: const Text(
              AppWords.phoneNumber,
              style: TextStyle(
                color: AppColors.kBlackColor,
                fontSize: 16,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 16.h),
                child: const CustomDropDownButton(),
              ),
              SizedBox(
                width: 14.w,
              ),
              CustomTextField(width: 250),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.h),
            child: Container(
              width: 100.w,
              height: 100.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        AppImages.flower,
                      ),
                      fit: BoxFit.fill)),
              child: CustomButton(
                  buttonText: AppWords.continueText, nextScreen: const VerificationCode()),
            ),
          ),
        ],
      ),
    );
  }
}
