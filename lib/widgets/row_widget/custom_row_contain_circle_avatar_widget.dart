import 'package:business_card_app/widgets/general_widget/custom_column_contain_texts_widget.dart';
import 'package:business_card_app/widgets/general_widget/custom_stack_widget.dart';
import 'package:flutter/material.dart';

class CustomRowContainCircleAvatar extends StatelessWidget {
  const CustomRowContainCircleAvatar({
    super.key,
    required this.secondListCollectionOfValue,
  });
  final List<String> secondListCollectionOfValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomStackWidget(),
        CustomColumnContainTexts(
          lastListCollectionOfValue: secondListCollectionOfValue,
        ),
      ],
    );
  }
}
