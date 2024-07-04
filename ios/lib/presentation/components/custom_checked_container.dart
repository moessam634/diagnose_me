import 'package:diagnose_me/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomCheckedContainer extends StatelessWidget {
   CustomCheckedContainer({Key? key,required this.color,required this.onTap}) : super(key: key);
  Color color;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 20.w,
        height: 20.sp,
        decoration: BoxDecoration(
          color: color ,
          border:Border.all(color: AppColors.kContainerColor1,width: 1.w),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
