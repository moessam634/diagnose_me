import 'package:diagnose_me/presentation/components/custom_button.dart';
import 'package:diagnose_me/presentation/screens/health_test_screens/add_symptoms_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_words.dart';

class SelectSymptoms extends StatefulWidget {
  const SelectSymptoms({Key? key}) : super(key: key);

  @override
  State<SelectSymptoms> createState() => _SelectSymptomsState();
}

class _SelectSymptomsState extends State<SelectSymptoms> {
  bool _checkboxValue1 = false;
  bool _checkboxValue2 = false;
  bool _checkboxValue3 = false;
  bool _checkboxValue4 = false;
  bool _checkboxValue5 = false;
  bool _checkboxValue6 = false;
  bool _checkboxValue7 = false;
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
            padding: EdgeInsets.only(top: 44.h, left: 30.w),
            child: const Text(
              AppWords.selectTheSymptomsYouHave,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CheckboxListTile(
            checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r)),
            activeColor: AppColors.kPrimaryColor,
            contentPadding: EdgeInsets.only(left: 30.w,right: 30.w),
            title: const Text(
              AppWords.headache,
              style: TextStyle(fontSize: 14),
            ),
            value: _checkboxValue1,
            onChanged: (value) {
              setState(() {
                _checkboxValue1 = value!;
              });
            },
          ),
          CheckboxListTile(
            checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r)),
            activeColor: AppColors.kPrimaryColor,
            contentPadding: EdgeInsets.only(left: 30.w,right: 30.w),
            title: const Text(
              AppWords.headache,
              style: TextStyle(fontSize: 14),
            ),
            value: _checkboxValue2,
            onChanged: (value) {
              setState(() {
                _checkboxValue2 = value!;
              });
            },
          ),
          CheckboxListTile(
            checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r)),
            activeColor: AppColors.kPrimaryColor,
            contentPadding: EdgeInsets.only(left: 30.w,right: 30.w),
            title: const Text(
              AppWords.headache,
              style: TextStyle(fontSize: 14),
            ),
            value: _checkboxValue3,
            onChanged: (value) {
              setState(() {
                _checkboxValue3 = value!;
              });
            },
          ),
          CheckboxListTile(
            checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r)),
            activeColor: AppColors.kPrimaryColor,
            contentPadding: EdgeInsets.only(left: 30.w,right: 30.w),
            title: const Text(
              AppWords.headache,
              style: TextStyle(fontSize: 14),
            ),
            value: _checkboxValue4,
            onChanged: (value) {
              setState(() {
                _checkboxValue4 = value!;
              });
            },
          ),
          CheckboxListTile(
            checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r)),
            activeColor: AppColors.kPrimaryColor,
            contentPadding: EdgeInsets.only(left: 30.w,right: 30.w),
            title: const Text(
              AppWords.headache,
              style: TextStyle(fontSize: 14),
            ),
            value: _checkboxValue5,
            onChanged: (value) {
              setState(() {
                _checkboxValue5 = value!;
              });
            },
          ),
          CheckboxListTile(
            checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r)),
            activeColor: AppColors.kPrimaryColor,
            contentPadding: EdgeInsets.only(left: 30.w,right: 30.w),
            title: const Text(
              AppWords.headache,
              style: TextStyle(fontSize: 14),
            ),
            value: _checkboxValue6,
            onChanged: (value) {
              setState(() {
                _checkboxValue6 = value!;
              });
            },
          ),
          CheckboxListTile(
            checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r)),
            activeColor: AppColors.kPrimaryColor,
            contentPadding: EdgeInsets.only(left: 30.w,right: 30.w),
            title: const Text(
              AppWords.headache,
              style: TextStyle(fontSize: 14),
            ),
            value: _checkboxValue7,
            onChanged: (value) {
              setState(() {
                _checkboxValue7 = value!;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.only(bottom:65.h,top: 83.h),
            child: CustomButton(nextScreen: const AddSymptomScreen(), buttonText:AppWords.saveSymptoms ),
          ),
        ],
      ),
    );
  }
}
