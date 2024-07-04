import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_button.dart';

// ignore: must_be_immutable
class CustomBottomSheet extends StatelessWidget {
  CustomBottomSheet(
      {Key? key,
      required this.title,
      this.phoneNumber,
      required this.buttonText,
      required this.nextScreen,
      required this.textSubject,
      this.body})
      : super(key: key);
  String? title;
  String? textSubject;
  String? phoneNumber;
  String? buttonText;
  Widget? body;
  Widget? nextScreen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 375.w,
            height: 388.h,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Column(
                    children: [
                      SizedBox(
                        height: 23.sp,
                      ),
                      Text(
                        '$title',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        '$textSubject',
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 28.h, top: 16.h),
                        child: CustomButton(
                            nextScreen: nextScreen, buttonText: buttonText!),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
