import 'package:business_card_app/constant.dart';
import 'package:business_card_app/model/access_value_model.dart';
import 'package:business_card_app/widgets/row_widget/custom_row_contain_icon_and_text_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomColumnContainTexts extends StatelessWidget {
  const CustomColumnContainTexts({
    super.key,
    required this.lastAccessValueModel,
  });
  final AccessValueModel lastAccessValueModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        CustomTextWidget(
          text: lastAccessValueModel.name,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: kSunyColor,
        ),
        CustomTextWidget(
          text: lastAccessValueModel.work,
          fontSize: 16,
          color: kSunyColor,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomRowContainIconAndTextWidget(
          iconDataInRow: FontAwesomeIcons.phoneVolume,
          textInRow: lastAccessValueModel.phone,
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
            textInRow: lastAccessValueModel.email,
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
            textInRow: lastAccessValueModel.site,
          ),
        ),
      ],
    );
  }
}
