import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hintext;
  final void Function(String?)? onSave;
  final String? Function(String?)? validator;

  const CustomTextFormField(
      {super.key,
      required this.text,
      required this.hintext,
      this.onSave,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: text,
          fontSize: 14,
          color: Colors.grey.shade800,
        ),
        TextFormField(
          onSaved: onSave,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintext,
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
