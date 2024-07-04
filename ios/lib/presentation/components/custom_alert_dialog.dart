import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAlertDialog extends StatelessWidget {
   CustomAlertDialog({Key? key,required this.width,required this.height,required this.content,required this.radius}) : super(key: key);
double width,height,radius;
Widget content;
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      content: SizedBox(
        width: width,
        height: height,
        child: content
      ),
    );
  }
}
