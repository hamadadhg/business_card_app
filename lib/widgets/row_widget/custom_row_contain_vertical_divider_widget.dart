import 'package:flutter/material.dart';

class CustomRowContainVerticalDividerWidget extends StatelessWidget {
  const CustomRowContainVerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 15,
        ),
        VerticalDivider(
          thickness: 5,
          width: 17,
          color: Color(
            0xffE2BB59,
          ),
        ),
        SizedBox(
          width: 7,
        ),
        VerticalDivider(
          thickness: 5,
          width: 17,
          color: Color(
            0xffE2BB59,
          ),
        ),
      ],
    );
  }
}
