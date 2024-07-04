import 'package:diagnose_me/app/app_images.dart';
import 'package:diagnose_me/presentation/components/custom_button.dart';
import 'package:diagnose_me/presentation/components/custom_filling_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_words.dart';

class RecommendedAnalysis extends StatelessWidget {
  const RecommendedAnalysis({Key? key}) : super(key: key);

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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 46.h, horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.asset(
              AppImages.prescription,
              width: 61.w,
              height: 61.h,
            )),
            SizedBox(
              height: 57.h,
            ),
            Text(
              AppWords.yourSymptomsRequireMedicalEvaluation,
              style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 27.h,
            ),
            Text(
              AppWords.recommendedAnalysis,
              style: TextStyle(
                fontSize: 16.w,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              AppWords.neurologist,
              style: TextStyle(
                  fontSize: 14.w,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kGreyColor),
            ),
            SizedBox(
              height: 22.h,
            ),
            Text(
              AppWords.possibleConditions,
              style: TextStyle(
                fontSize: 16.w,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 314.w,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.w,
                    color: AppColors.kSeparatorContainerColor,
                  )),
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              height: ScreenUtil().setHeight(310),
              width: double.infinity,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 21.h,
                        ),
                        Row(
                          children: [
                            CustomFillingSlider(color: AppColors.kPrimaryColor,fillColor: AppColors.kFillingSliderColor,),
                            SizedBox(
                              width: 10.h,
                            ),
                            const Text(
                              AppWords.strongEvidence,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.kGreyColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        const Text(
                          AppWords.tensionHeadaches,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        const Text(
                          AppWords.tensionTypeHeadaches,
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.only(left: 208.w))),
                          child: Row(
                            children: [
                              const Text(
                                AppWords.showDetails,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.kPrimaryColor),
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 12.w,
                                color: AppColors.kPrimaryColor,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Container(
                        width: 314.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                          width: 1.w,
                          color: AppColors.kSeparatorContainerColor,
                        )),
                      ),
                  itemCount: 3),
            ),
            SizedBox(height: 41.h,),
            CustomButton(nextScreen: null, buttonText: AppWords.done)
          ],
        ),
      ),
    );
  }
}
