import 'package:filling_slider/filling_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/app_colors.dart';

// ignore: must_be_immutable
class CustomFillingSlider extends StatelessWidget {
   CustomFillingSlider({Key? key,required this.fillColor,required this.color}) : super(key: key);
Color fillColor;
Color color;
  @override
  Widget build(BuildContext context) {
    return FillingSlider(
        height: 15.sp,
        width: 71.w,
        direction: FillingSliderDirection.horizontal,
        color: AppColors.kPrimaryColor,
        fillColor:fillColor,);
  }
}
