// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final void Function()? onPressed;

  const CustomButtonSocial({
    Key? key,
    required this.text,
    required this.imageName,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade100,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset(
              imageName,
              width: 30,
              height: 30,
            ),
            SizedBox(width: 50),
            CustomText(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
