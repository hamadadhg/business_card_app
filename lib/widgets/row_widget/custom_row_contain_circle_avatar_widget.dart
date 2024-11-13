import 'package:business_card_app/widgets/row_widget/custom_row_contain_vertical_divider_widget.dart';
import 'package:flutter/material.dart';

class CustomRowContainCircleAvatar extends StatelessWidget {
  const CustomRowContainCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Stack(
          children: [
            CustomRowContainVerticalDividerWidget(),
          ],
        ),
      ],
    );
  }
}
