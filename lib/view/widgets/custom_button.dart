// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(18),
      onPressed: onPressed,
      color: primaryColor,
      child: CustomText(
        text: text,
        alignment: Alignment.center,
        color: Colors.white,
      ),
    );
  }
}
