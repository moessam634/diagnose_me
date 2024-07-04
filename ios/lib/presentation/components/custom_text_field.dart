import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
   CustomTextField({Key? key,this.hintText,required this.width,this.suffixIcon,}) : super(key: key);

  String? hintText;
  Icon? suffixIcon;
  double width;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: width.w,
      child: TextFormField(
        obscureText: true,
        decoration:  InputDecoration(border: const UnderlineInputBorder(),
        hintText: hintText,
        suffixIcon:suffixIcon ,
        ),
      ),
    );
  }
}
