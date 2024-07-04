import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_words.dart';

class SearchSymptomScreen extends StatelessWidget {
  const SearchSymptomScreen({Key? key}) : super(key: key);

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
          children: [
            Padding(
              padding: EdgeInsets.all(16.sp),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.kPrimaryColor, width: 1.w),
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  hintText: AppWords.searchExample,
                  hintStyle: const TextStyle(fontSize:16,color: AppColors.kGreyColor),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(24.r),
                   ),
                  suffixIcon: const Icon(
                    Icons.search,color: AppColors.kGreyColor,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
