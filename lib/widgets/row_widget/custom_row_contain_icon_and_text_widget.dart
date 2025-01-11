import 'package:business_card_app/constant.dart';
import 'package:business_card_app/widgets/general_widget/custom_icon_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomRowContainIconAndTextWidget extends StatelessWidget {
  const CustomRowContainIconAndTextWidget({
    super.key,
    required this.iconDataInRow,
    required this.textInRow,
  });
  final IconData iconDataInRow;
  final String textInRow;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        textInRow.length > 15
            ? const SizedBox(
                width: 7,
              )
            : const SizedBox(
                width: 0,
              ),
        CustomIconWidget(
          iconData: iconDataInRow,
        ),
        const SizedBox(
          width: 12,
        ),
        CustomTextWidget(
          text: textInRow,
          fontSize: 13,
          color: kSunyColor,
        ),
      ],
    );
  }
}
