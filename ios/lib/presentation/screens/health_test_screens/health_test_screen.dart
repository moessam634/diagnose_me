import 'package:diagnose_me/app/app_colors.dart';
import 'package:diagnose_me/app/app_words.dart';
import 'package:diagnose_me/presentation/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/app_images.dart';

class HealthTestScreen extends StatefulWidget {
  const HealthTestScreen({Key? key}) : super(key: key);

  @override
  State<HealthTestScreen> createState() => _HealthTestScreenState();
}

bool isMale = true;
int age = 50;

class _HealthTestScreenState extends State<HealthTestScreen> {
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: const Icon(
              Icons.list,
              color: AppColors.kBlackColor,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 44.h, left: 38.w),
            child: const Text(
              AppWords.hello,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 11.h, left: 38.w),
            child: const Text(
              AppWords.letsStarted,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 82.h, left: 133.w, right: 143.w),
            child: const Text(
              AppWords.selectYourAge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 26.w,
                  height: 26.sp,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.r),
                      border: Border.all(
                        color: AppColors.kPrimaryColor,
                      )),
                  child: FloatingActionButton(
                    backgroundColor: AppColors.kBackgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19.r)),
                    elevation: 0,
                    onPressed: () {
                      setState(() {
                        age--;
                      });
                    },
                    heroTag: 'age--',
                    child: const Icon(
                      Icons.remove,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 24.w,
                ),
                Container(
                  width: 38.w,
                  height: 38.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.kPrimaryColor),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Center(
                    child: Text(
                      '$age',
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 24.w,
                ),
                Container(
                  width: 26.w,
                  height: 26.sp,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.r),
                      border: Border.all(
                        color: AppColors.kPrimaryColor,
                      )),
                  child: FloatingActionButton(
                    backgroundColor: AppColors.kBackgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19.r)),
                    elevation: 0,
                    onPressed: () {
                      setState(() {
                        age++;
                      });
                    },
                    heroTag: 'age++',
                    child: const Icon(
                      Icons.add,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 64.h, left: 133.w, right: 123.w),
            child: const Text(
              AppWords.selectYourGender,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    width: 110.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28.r),
                        color:
                            isMale ? AppColors.kBackgroundColor : Colors.cyan),
                    child: Image.asset(
                      AppImages.male,
                      width: 65.w,
                      height: 65.h,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                ),
                SizedBox(
                  width: 24.w,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    width: 110.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                      color: isMale ? Colors.pink : AppColors.kBackgroundColor,
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Image.asset(
                      AppImages.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(30.h),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog.adaptive(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r)),
                      content: SizedBox(
                        width: 314.w,
                        height: 569.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 120.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  AppImages.calender,
                                  width: 64.w,
                                  height: 52.h,
                                ),
                              ),
                              SizedBox(
                                height: 51.h,
                              ),
                              Text(
                                AppWords
                                    .youRequireToAddYourAnalysisToHelpYouToFeelSafe,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.w),
                              ),
                              SizedBox(
                                height: 70.h,
                              ),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                    showDialog(
                                      context: context,
                                      builder: (context) =>
                                          AlertDialog.adaptive(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(28.r)),
                                        content: SizedBox(
                                            width: 308.w,
                                            height: 655.h,
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  width: double.infinity,
                                                  height: 542.h,
                                                  child: ListView.builder(
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 14.h),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              AppWords.sample,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      15.w),
                                                            ),
                                                            SizedBox(
                                                              height: 8.h,
                                                            ),
                                                            TextFormField(
                                                              decoration:
                                                                  InputDecoration(
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: AppColors
                                                                          .kPrimaryColor,
                                                                      width:
                                                                          1.w),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24.r),
                                                                ),
                                                                hintText: AppWords
                                                                    .scaleHint,
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical: 15
                                                                            .h,
                                                                        horizontal:
                                                                            25.w),
                                                                hintStyle: const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    color: AppColors
                                                                        .kGreyColor),
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.r),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 60.h,
                                                ),
                                                Center(
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                      showDialog(
                                                        context: context,
                                                        builder: (context) =>
                                                            AlertDialog
                                                                .adaptive(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.r)),
                                                          content: SizedBox(
                                                            width: 308.w,
                                                            height: 460.h,
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          20.h),
                                                              child: Column(
                                                                children: [
                                                                  const Text(
                                                                    AppWords
                                                                        .congratulations,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w500),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        14.h,
                                                                  ),
                                                                  const Text(
                                                                    AppWords
                                                                        .yourAnalysisAreNegative,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        46.h,
                                                                  ),
                                                                  Image.asset(
                                                                      AppImages
                                                                          .well),
                                                                  SizedBox(
                                                                    height:
                                                                        70.h,
                                                                  ),
                                                                  CustomButton(
                                                                      nextScreen:
                                                                          null,
                                                                      buttonText:
                                                                          AppWords
                                                                              .done)
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
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
                                                                    100.w,
                                                                vertical: 15.h),
                                                        child: const Text(
                                                          AppWords.check,
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .kBackgroundColor,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24.r),
                                      color: AppColors.kPrimaryColor,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 90.w, vertical: 15.h),
                                      child: const Text(
                                        AppWords.continueText,
                                        style: TextStyle(
                                            color: AppColors.kBackgroundColor,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
              )),
        ],
      ),
    );
  }
}
