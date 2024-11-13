import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnContainTexts extends StatelessWidget {
  const CustomColumnContainTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextWidget(
          text: 'Hamada Dere',
          fontSize: 27,
          color: Color(
            0xffE5B952,
          ),
        ),
        CustomTextWidget(
          text: 'Flutter Developer',
          fontSize: 17,
          color: Color(
            0xffE5B952,
          ),
        ),
      ],
    );
  }
}
