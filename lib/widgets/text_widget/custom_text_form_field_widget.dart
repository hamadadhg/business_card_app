import 'package:business_card_app/constant.dart';
import 'package:business_card_app/helper/outline_input_border_helper.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This Field Is Required';
        }
        return null;
      },
      cursorColor: kWhiteColor,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: outlineInputBorderHelper(),
        focusedBorder: outlineInputBorderHelper(),
      ),
    );
  }
}
