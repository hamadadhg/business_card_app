import 'package:business_card_app/widgets/row_widget/custom_row_contain_icon_and_text_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomColumnContainTexts extends StatelessWidget {
  const CustomColumnContainTexts({
    super.key,
    required this.lastListCollectionOfValue,
  });
  final List<String> lastListCollectionOfValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        CustomTextWidget(
          text: lastListCollectionOfValue[0],
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: const Color(
            0xffE5B952,
          ),
        ),
        CustomTextWidget(
          text: lastListCollectionOfValue[1],
          fontSize: 16,
          color: const Color(
            0xffE5B952,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomRowContainIconAndTextWidget(
          iconDataInRow: FontAwesomeIcons.phoneVolume,
          textInRow: lastListCollectionOfValue[2],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: CustomRowContainIconAndTextWidget(
            iconDataInRow: Icons.email,
            textInRow: lastListCollectionOfValue[3],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 30,
          ),
          child: CustomRowContainIconAndTextWidget(
            iconDataInRow: FontAwesomeIcons.locationDot,
            textInRow: lastListCollectionOfValue[4],
          ),
        ),
      ],
    );
  }
}
