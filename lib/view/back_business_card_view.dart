import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class BackBusinessCardView extends StatelessWidget {
  const BackBusinessCardView({super.key});
  static String backBusinessCardViewId = 'BackBusinessCardView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          CustomTextWidget(
            text: 'Background Business Card',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
