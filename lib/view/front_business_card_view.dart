import 'package:business_card_app/widgets/general_widget/custom_front_card_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class FrontBusinessCardView extends StatelessWidget {
  const FrontBusinessCardView({super.key});
  static String frontBusinessCardViewId = 'FrontBusinessCardView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextWidget(
              text: 'Front Card',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(
                0xffE5B952,
              ),
              fontFamily: 'Dancing Script',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomFrontCardWidget(),
            const SizedBox(
              height: 40,
            ),
            const CustomTextWidget(
              text: 'Back Card',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(
                0xffE5B952,
              ),
              fontFamily: 'Dancing Script',
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/image/1600w-0yP0535zjcg - Copy.webp',
            ),
          ],
        ),
      ),
    );
  }
}
