import 'package:business_card_app/widgets/general_widget/custom_column_contain_texts_widget.dart';
import 'package:business_card_app/widgets/general_widget/custom_stack_widget.dart';
import 'package:flutter/material.dart';

class CustomRowContainCircleAvatar extends StatelessWidget {
  const CustomRowContainCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomStackWidget(),
        CustomColumnContainTexts(),
      ],
    );
  }
}
