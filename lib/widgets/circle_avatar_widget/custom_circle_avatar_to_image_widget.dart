import 'dart:io';
import 'package:business_card_app/constant.dart';
import 'package:business_card_app/model/access_value_model.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatarToImageWidget extends StatelessWidget {
  const CustomCircleAvatarToImageWidget({
    super.key,
    required this.forthAccessValueModel,
  });
  final AccessValueModel forthAccessValueModel;
  @override
  Widget build(BuildContext context) {
    final String imagePath = forthAccessValueModel.image;
    final bool isValidPath = File(imagePath).existsSync();
    // .existsSync() use to check the path is exist in this file or no
    return CircleAvatar(
      backgroundColor: const Color(
        0xff07723A,
      ),
      radius: 60,
      child: CircleAvatar(
        backgroundColor: kSunyColor,
        radius: 53,
        child: ClipOval(
          child: isValidPath
              ? Image.file(
                  File(
                    imagePath,
                  ),
                  fit: BoxFit.cover,
                  height: 120,
                  width: 120,
                )
              : const CustomTextWidget(
                  text: 'No Image',
                  fontSize: 20,
                ),
        ),
      ),
    );
  }
}
