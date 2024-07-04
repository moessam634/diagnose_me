import 'package:diagnose_me/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_words.dart';

// ignore: must_be_immutable
class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({Key? key}) : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String dropdownValue = AppWords.list.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      elevation: 0,
      hint: Text(dropdownValue),
      style: const TextStyle(color: AppColors.kPrimaryColor),
      underline: Container(
        height: 1.h,
        color: AppColors.kGreyColor,
      ),
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      items:  AppWords.list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
}
