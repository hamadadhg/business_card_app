import 'package:business_card_app/widgets/text_widget/custom_text_form_field_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomSomeContainTheSecreenWidget extends StatelessWidget {
  const CustomSomeContainTheSecreenWidget({
    super.key,
    required this.viewNumber,
    required this.firstTextInTextWidget,
    required this.secondTextInTextWidget,
  });
  final String viewNumber;
  final String firstTextInTextWidget;
  final String secondTextInTextWidget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        CustomTextWidget(
          text: viewNumber,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 225,
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
        const CustomTextFieldWidget(),
        const SizedBox(
          height: 250,
        ),
      ],
    );
  }
}