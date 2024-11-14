import 'package:business_card_app/constant.dart';
import 'package:business_card_app/helper/outline_input_border_helper.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    super.key,
    required this.textInputType,
    required this.onChanged,
  });
  final TextInputType textInputType;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: textInputType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This Field Is Required';
        } else if (value.length > 20) {
          return 'Just You Can Write 20 Charactar';
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
