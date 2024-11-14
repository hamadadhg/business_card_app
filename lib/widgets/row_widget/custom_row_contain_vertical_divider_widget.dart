import 'package:flutter/material.dart';

class CustomRowContainVerticalDividerWidget extends StatelessWidget {
  const CustomRowContainVerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        VerticalDivider(
          thickness: 4,
          width: 15,
          color: Color(
            0xffE2BB59,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        VerticalDivider(
          thickness: 4,
          width: 15,
          color: Color(
            0xffE2BB59,
          ),
        ),
      ],
    );
  }
}
