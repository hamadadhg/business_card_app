import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_to_image_widget.dart';
import 'package:business_card_app/widgets/row_widget/custom_row_contain_vertical_divider_widget.dart';
import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        CustomRowContainVerticalDividerWidget(),
        CustomCircleAvatarToImageWidget(),
      ],
    );
  }
}
