import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';

// ignore: must_be_immutable
class CustomMySymptomsContainer extends StatelessWidget {
    CustomMySymptomsContainer({Key? key,required this.symptoms}) : super(key: key);
   String symptoms ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              gradient:  const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.kContainerColor1, AppColors.kContainerColor2]),
            ),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 13.h),
                  child: Text(
                    symptoms,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(width: 16.w,),
                Padding(
                  padding:  EdgeInsets.only(right: 13.w,),
                  child: Container(
                    width: 17.w,
                    height: 17.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.r),
                    ),
                    child: FloatingActionButton(
                      backgroundColor: AppColors.kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19.r)),
                      elevation: 0,
                      onPressed: () {
                      },
                      heroTag: 'close',
                      child:  Icon(
                        Icons.close,size: 17.sp,
                        color: AppColors.kBackgroundColor,
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
