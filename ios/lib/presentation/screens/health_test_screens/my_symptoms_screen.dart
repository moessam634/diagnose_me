import 'package:diagnose_me/presentation/components/custom_my_symptoms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../../../app/app_words.dart';
import 'health_test_screen.dart';

class MySymptomScreen extends StatelessWidget {
  const MySymptomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
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
            padding: EdgeInsets.only(left: 75.w, right: 75.w),
            child: Image.asset(AppImages.checkUp,width: 226.w,height: 410.h,),
          ),
          SizedBox(height: 15.h,),
          Padding(
            padding:  EdgeInsets.only(left: 40.w),
            child: const Text(
              AppWords.mySymptoms,
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 18.h,),
            Row(
            children: [
              CustomMySymptomsContainer(symptoms: AppWords.headache),
              CustomMySymptomsContainer(symptoms: AppWords.headache),
            ],
          ),
          SizedBox(height: 12.h,),
           Row(
            children: [
              CustomMySymptomsContainer(symptoms: AppWords.headacheInFace),
              CustomMySymptomsContainer(symptoms: AppWords.headache),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 67.h,left: 30.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.kPrimaryColor),
                          borderRadius: BorderRadius.circular(24.r),
                          color: AppColors.kBackgroundColor),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 55.w, vertical: 15.h),
                        child: const Text(
                          AppWords.back,
                          style: TextStyle(
                              color: AppColors.kPrimaryColor, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30.w,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => const HealthTestScreen()),
                    );
                  },
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.r),
                          color: AppColors.kPrimaryColor),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 55.w, vertical: 15.h),
                        child: const Text(
                          AppWords.next,
                          style: TextStyle(
                              color: AppColors.kBackgroundColor, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
