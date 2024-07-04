import 'package:diagnose_me/presentation/screens/health_test_screens/search_symptoms_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../../../app/app_words.dart';
import 'my_symptoms_screen.dart';

class AddSymptomScreen extends StatelessWidget {
  const AddSymptomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        children: [
          Padding(
            padding: EdgeInsets.only(left: 75.w, right: 75.w),
            child: SizedBox(
                width: 226.w,
                height: 410.h,
                child: Image.asset(AppImages.checkUp)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 68.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Container(
                    width: 26.w,
                    height: 26.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.r),
                    ),
                    child: FloatingActionButton(
                      backgroundColor: AppColors.kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19.r)),
                      elevation: 0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) =>
                                    const SearchSymptomScreen()));
                      },
                      heroTag: 'add',
                      child: const Icon(
                        Icons.add,
                        color: AppColors.kBackgroundColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 19.w,
                ),
                const Text(
                  AppWords.addSymptom,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 30.w, right: 30.w),
            child: const Text(
              AppWords.addManySymptomsAsYouCan,
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 30.w),
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
                SizedBox(
                  width: 30.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const MySymptomScreen()),
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
          )
        ],
      ),
    );
  }
}
