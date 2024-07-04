import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../../../app/app_words.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 90.h,
            ),
            child: Center(
              child: Image.asset(
                AppImages.congratsMan,
                height: 220.h,
                width: 113.w,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 70.h,
            ),
            child: const Text(
              AppWords.congratulations,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 65.h),
            child: const Text(
              AppWords.yourAccHasBeenVerify,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 65.h,
            ),
            child: Image.asset(AppImages.success, height: 73.sp, width: 73.sw),
          ),
          Padding(
              padding: EdgeInsets.all(50.h),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog.adaptive(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r)),
                      content: SizedBox(
                        width: 308.w,
                        height: 460.h,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 131.sp),
                              child: const Text(
                                AppWords.thisAccFor,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 36.h,
                            ),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.r),
                                    color: AppColors.kBackgroundColor,
                                    border: Border.all(
                                        color: AppColors.kPrimaryColor)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 100.w, vertical: 15.h),
                                  child: const Text(
                                    AppWords.patient,
                                    style: TextStyle(
                                        color: AppColors.kPrimaryColor,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.r),
                                    color: AppColors.kBackgroundColor,
                                    border: Border.all(
                                        color: AppColors.kPrimaryColor)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 100.w, vertical: 15.h),
                                  child: const Text(
                                    AppWords.doctor,
                                    style: TextStyle(
                                        color: AppColors.kPrimaryColor,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.r),
                        color: AppColors.kPrimaryColor),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 100.w, vertical: 15.h),
                      child: const Text(
                        AppWords.done,
                        style: TextStyle(
                            color: AppColors.kBackgroundColor, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
