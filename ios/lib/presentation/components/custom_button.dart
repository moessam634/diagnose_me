import 'package:diagnose_me/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.nextScreen, required this.buttonText})
      : super(key: key);
  Widget? nextScreen;
  String buttonText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (builder) => nextScreen!),
        );
      },
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: AppColors.kPrimaryColor),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 15.h),
            child: Text(
              buttonText,
              style: const TextStyle(
                  color: AppColors.kBackgroundColor, fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}
