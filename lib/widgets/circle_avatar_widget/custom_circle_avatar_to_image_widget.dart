import 'dart:developer';
import 'dart:io';

import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatarToImageWidget extends StatelessWidget {
  const CustomCircleAvatarToImageWidget({
    super.key,
    required this.forthListCollectionOfValue,
  });
  final List<String> forthListCollectionOfValue;
  @override
  Widget build(BuildContext context) {
    final String imagePath = forthListCollectionOfValue[5];
    final bool isValidPath = File(imagePath).existsSync();
    log(
      'The ImagePath Is $imagePath',
    );
    return CircleAvatar(
      backgroundColor: const Color(
        0xff07723A,
      ),
      radius: 60,
      child: CircleAvatar(
        backgroundColor: const Color(
          0xffE2BB59,
        ),
        radius: 53,
        child: ClipOval(
          child: isValidPath
              ? Image.file(
                  File(
                    imagePath,
                  ),
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
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
