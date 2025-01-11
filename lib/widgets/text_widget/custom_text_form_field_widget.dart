import 'package:business_card_app/constant.dart';
import 'package:business_card_app/helper/outline_input_border_helper.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    super.key,
    required this.textInputType,
    required this.onChanged,
    this.validator,
  });
  final TextInputType textInputType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  static String? defaultValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This Field Is Required';
    } else if (value.length > 20) {
      return 'Just You Can Write 20 Charactar';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: textInputType,
      validator: validator ?? defaultValidator,
      cursorColor: kWhiteColor,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: outlineInputBorderHelper(),
        focusedBorder: outlineInputBorderHelper(),
      ),
    );
  }
}
