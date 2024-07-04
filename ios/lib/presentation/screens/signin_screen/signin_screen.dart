import 'package:diagnose_me/presentation/components/custom_otp_boxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../../../app/app_words.dart';
import '../../components/custom_button.dart';
import '../../components/custom_drop_down_button.dart';
import '../../components/custom_text_field.dart';
import '../signup_screen/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kPrimaryColor,
        elevation: 0,
       title:  const Text(
         AppWords.signIn,
         style: TextStyle(
           color:AppColors.kBackgroundColor,
           fontSize: 20,
         ),
       ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: Image.asset(
              AppImages.signIn,
              width: 346.w,
              height: 250.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 236.w, top: 18.sp),
            child: const Text(
              AppWords.phoneNumber,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 20.h),
                child: const CustomDropDownButton(),
              ),
              SizedBox(
                width: 14.w,
              ),
              CustomTextField(width: 250),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 31.w, right: 272.w, top: 22.h),
            child: const Text(
              AppWords.password,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 31.w, right: 31.w),
            child: CustomTextField(
              hintText: AppWords.enterPassword,
              width: 313,
            ),
          ),
          TextButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                constraints: BoxConstraints(maxHeight: 388.h, minWidth: 375.w),
                shape:   RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(70.r),
                  ),
                ),
                builder: (context) => Column(
                  children: [
                    SizedBox(
                      height: 23.sp,
                    ),
                    const Text(
                      AppWords.forgetPassword,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    const Text(
                      AppWords.forgotPasswordVerification,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.w, right: 236.w, top: 57.h),
                      child: const Text(
                        AppWords.phoneNumber,
                        style: TextStyle(
                            color: AppColors.kBlackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
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
                      padding: EdgeInsets.only(bottom: 28.h, top: 16.h),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          showModalBottomSheet(
                              context: context,
                              constraints: BoxConstraints(
                                  maxHeight: 388.h, minWidth: 375.w),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(70),
                                ),
                              ),
                              builder: (BuildContext context) {
                                return Column(
                                  children: [
                                    SizedBox(
                                      height: 23.sp,
                                    ),
                                    const Text(
                                      AppWords.enterDigitsCode,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 40.h,
                                    ),
                                    const Text(
                                      AppWords.enterDigitsCodeSentToYourMobile,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.sp,
                                    ),
                                    CustomOtpBox(),
                                    SizedBox(
                                      height: 30.sp,
                                    ),
                                    const Text(
                                      AppWords.resendInSec,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.sp,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        showModalBottomSheet(
                                          context: context,
                                          constraints: BoxConstraints(
                                              maxHeight: 444.h,
                                              minWidth: 375.w),
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(70),
                                            ),
                                          ),
                                          builder: (context) => Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 30.w),
                                            child: ListView(
                                              children: [
                                                SizedBox(
                                                  height: 30.h,
                                                ),
                                                const Text(
                                                  AppWords.resetPassword,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 30.h,
                                                ),
                                                const Text(
                                                  AppWords
                                                      .setTheNewPasswordForYourAcc,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30.h,
                                                ),
                                                const Text(
                                                  AppWords.password,
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.kBlackColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                CustomTextField(
                                                    width: 313.w,
                                                    suffixIcon: const Icon(
                                                      CupertinoIcons.eye_slash,
                                                      color:
                                                          AppColors.kGreyColor,
                                                    )),
                                                SizedBox(
                                                  height: 30.h,
                                                ),
                                                const Text(
                                                  AppWords.confirmPassword,
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.kBlackColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                CustomTextField(
                                                    width: 313.w,
                                                    suffixIcon: const Icon(
                                                      CupertinoIcons.eye_slash,
                                                      color:
                                                          AppColors.kGreyColor,
                                                    )),
                                                SizedBox(
                                                  height: 30.h,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 28.h, top: 16.h),
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: Center(
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.r),
                                                            color: AppColors
                                                                .kPrimaryColor),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      90.w,
                                                                  vertical:
                                                                      15.h),
                                                          child: const Text(
                                                            AppWords
                                                                .resetPassword,
                                                            style: TextStyle(
                                                                color: AppColors
                                                                    .kBackgroundColor,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      child: Center(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(24.r),
                                              color: AppColors.kPrimaryColor),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 90.w,
                                                vertical: 15.h),
                                            child: const Text(
                                              AppWords.continueText,
                                              style: TextStyle(
                                                  color: AppColors
                                                      .kBackgroundColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.r),
                                color: AppColors.kPrimaryColor),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 90.w, vertical: 15.h),
                              child: const Text(
                                AppWords.submit,
                                style: TextStyle(
                                    color: AppColors.kBackgroundColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 180.w, right: 41.w, top: 7.h),
              child: const Text(
                AppWords.forgotPassword,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.h),
            child: CustomButton(
              nextScreen: null,
              buttonText: AppWords.login,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) => const SignUpScreen(),
                ),
              );
            },
            child: Padding(
                padding: EdgeInsets.only(top: 32.h, left: 80.w, right: 80.w),
                child: const Row(
                  children: [
                    Text(
                      AppWords.donNotHaveAcc,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      AppWords.signUp,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
