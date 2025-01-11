/*
import 'package:business_card_app/widgets/text_widget/custom_text_form_field_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomSomeContainTheSecreenWidget extends StatelessWidget {
  const CustomSomeContainTheSecreenWidget({
    super.key,
    required this.viewNumber,
    required this.firstTextInTextWidget,
    required this.secondTextInTextWidget,
    this.textInputType = TextInputType.text,
    required this.onChanged,
    this.validator,
  });
  final String viewNumber;
  final String firstTextInTextWidget;
  final String secondTextInTextWidget;
  final TextInputType textInputType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 45,
        ),
        CustomTextWidget(
          text: viewNumber,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 200,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTextWidget(
            text: firstTextInTextWidget,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTextWidget(
            text: secondTextInTextWidget,
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextFormFieldWidget(
          textInputType: textInputType,
          onChanged: onChanged,
          validator: validator,
        ),
        const SizedBox(
          height: 150,
        ),
      ],
    );
  }
}
*/
