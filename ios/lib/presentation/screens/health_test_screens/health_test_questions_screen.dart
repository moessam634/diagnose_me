import 'package:diagnose_me/presentation/components/custom_button.dart';
import 'package:diagnose_me/presentation/components/custom_checked_container.dart';
import 'package:filling_slider/filling_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_words.dart';

// ignore: must_be_immutable
class HealthQuestions extends StatefulWidget {
  const HealthQuestions({Key? key}) : super(key: key);

  @override
  State<HealthQuestions> createState() => _HealthQuestionsState();
}

class _HealthQuestionsState extends State<HealthQuestions> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.kBlackColor,
            size: 16.w,
          ),
        ),
        backgroundColor: AppColors.kBackgroundColor,
        centerTitle: true,
        title: const Text(
          AppWords.healthTest,
          style: TextStyle(fontSize: 20, color: AppColors.kBlackColor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 30.h),
            child: const Text(
              AppWords.howSevereIsYourPain,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 5.h),
            child: const Text(
              AppWords.tapToShowHowMuchPainsYouIn,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 17.h, left: 30.w),
            child: FillingSlider(
              height: 15.sp,
              width: 314.w,
              direction: FillingSliderDirection.horizontal,
              color: AppColors.kPrimaryColor,
              fillColor: AppColors.kGreyColor,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 85.w),
                    child: Container(
                      width: 2.w,
                      height: 15.sp,
                      decoration: const BoxDecoration(
                          color:AppColors.kBackgroundColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 95.w),
                    child: Container(
                      width: 2.w,
                      height: 15.sp,
                      decoration: const BoxDecoration(
                          color:AppColors.kBackgroundColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 45.w),
                    child: Container(
                      width: 2.w,
                      height: 15.sp,
                      decoration: const BoxDecoration(
                          color: AppColors.kBackgroundColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 30.w),
                child: Text(
                  AppWords.mid,
                  style: TextStyle(fontSize: 10.w),
                ),
              ),
              SizedBox(width:229.w),
              Padding(
                padding:  EdgeInsets.only(right: 30.w),
                child: Text(
                  AppWords.unBearable,
                  style: TextStyle(fontSize: 10.w),
                ),
              ),
            ],
          ),
          SizedBox(height:37.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 5.h),
                child: const Text(
                  AppWords.doYouHaveFever,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Row(
                  children: [
                    CustomCheckedContainer(
                      color: isChecked
                          ? AppColors.kContainerColor1
                          : AppColors.kBackgroundColor,
                      onTap: () {
                        setState(() {
                          isChecked = true;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(
                      AppWords.yes,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Row(
                  children: [
                    CustomCheckedContainer(
                      color: isChecked
                          ? AppColors.kBackgroundColor
                          : AppColors.kContainerColor1,
                      onTap: () {
                        setState(() {
                          isChecked = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(
                      AppWords.no,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 5.h),
                child: const Text(
                  AppWords.doYouHaveFever,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Row(
                  children: [
                    CustomCheckedContainer(
                      color: isChecked
                          ? AppColors.kContainerColor1
                          : AppColors.kBackgroundColor,
                      onTap: () {
                        setState(() {
                          isChecked = true;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(
                      AppWords.yes,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Row(
                  children: [
                    CustomCheckedContainer(
                      color: isChecked
                          ? AppColors.kBackgroundColor
                          : AppColors.kContainerColor1,
                      onTap: () {
                        setState(() {
                          isChecked = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(
                      AppWords.no,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 5.h),
                child: const Text(
                  AppWords.doYouHaveFever,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Row(
                  children: [
                    CustomCheckedContainer(
                      color: isChecked
                          ? AppColors.kContainerColor1
                          : AppColors.kBackgroundColor,
                      onTap: () {
                        setState(() {
                          isChecked = true;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(
                      AppWords.yes,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Row(
                  children: [
                    CustomCheckedContainer(
                      color: isChecked
                          ? AppColors.kBackgroundColor
                          : AppColors.kContainerColor1,
                      onTap: () {
                        setState(() {
                          isChecked = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(
                      AppWords.no,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 70.h),
            child: CustomButton(
                nextScreen: null, buttonText: AppWords.continueText),
          )
        ],
      ),
    );
  }
}
