import 'package:business_card_app/widgets/row_widget/custom_row_contain_icon_and_text_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomColumnContainTexts extends StatelessWidget {
  const CustomColumnContainTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CustomTextWidget(
          text: 'Hamada Dere',
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color(
            0xffE5B952,
          ),
        ),
        CustomTextWidget(
          text: 'Flutter Developer',
          fontSize: 16,
          color: Color(
            0xffE5B952,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        CustomRowContainIconAndTextWidget(
          iconDataInRow: FontAwesomeIcons.phoneVolume,
          textInRow: '+963 949371163',
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16,
          ),
          child: CustomRowContainIconAndTextWidget(
            iconDataInRow: Icons.email,
            textInRow: 'hamada@gmail.com',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 30,
          ),
          child: CustomRowContainIconAndTextWidget(
            iconDataInRow: FontAwesomeIcons.locationDot,
            textInRow: 'Syria,Aleppo',
          ),
        ),
      ],
    );
  }
}
