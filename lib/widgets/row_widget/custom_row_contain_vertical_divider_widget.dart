import 'package:business_card_app/constant.dart';
import 'package:flutter/material.dart';

class CustomRowContainVerticalDividerWidget extends StatelessWidget {
  const CustomRowContainVerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VerticalDivider(
          thickness: 4,
          width: 15,
          color: kSunyColor,
        ),
        const SizedBox(
          width: 5,
        ),
        VerticalDivider(
          thickness: 4,
          width: 15,
          color: kSunyColor,
        ),
      ],
    );
  }
}
