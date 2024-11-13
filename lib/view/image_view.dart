import 'package:business_card_app/view/front_business_card_view.dart';
import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});
  static String imageViewId = 'ImageView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const CustomTextWidget(
            text: '6/6',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 255,
          ),
          TextButton(
            onPressed: () {},
            child: const CustomTextWidget(
              text: 'Select Image 📷',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCircleAvatarWidget(
                text: 'Back',
                backgroundColor: Colors.red,
                onTap: () {
                  Navigator.pop(
                    context,
                  );
                },
              ),
              const SizedBox(
                width: 110,
              ),
              CustomCircleAvatarWidget(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    FrontBusinessCardView.frontBusinessCardViewId,
                  );
                },
                text: 'Go',
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
