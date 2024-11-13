import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatarWidget extends StatelessWidget {
  const CustomCircleAvatarWidget({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const CircleAvatar(
        radius: 32,
        backgroundColor: Colors.green,
        child: CustomTextWidget(
          text: 'Go',
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
