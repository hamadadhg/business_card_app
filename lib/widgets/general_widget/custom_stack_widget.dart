import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_to_image_widget.dart';
import 'package:business_card_app/widgets/row_widget/custom_row_contain_vertical_divider_widget.dart';
import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({
    super.key,
    required this.thirdListCollectionOfValue,
  });
  final List<String> thirdListCollectionOfValue;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const CustomRowContainVerticalDividerWidget(),
        CustomCircleAvatarToImageWidget(
          forthListCollectionOfValue: thirdListCollectionOfValue,
        ),
      ],
    );
  }
}
