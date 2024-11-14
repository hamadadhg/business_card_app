import 'package:business_card_app/widgets/row_widget/custom_row_contain_circle_avatar_widget.dart';
import 'package:flutter/material.dart';

class CustomFrontCardWidget extends StatelessWidget {
  const CustomFrontCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 240,
      child: Card(
        color: Color(
          0xff023926,
        ),
        child: CustomRowContainCircleAvatar(),
      ),
    );
  }
}
