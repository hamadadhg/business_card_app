import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({
    super.key,
    required this.iconData,
  });
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: 30,
      color: const Color(
        0xffDFB954,
      ),
      child: Icon(
        iconData,
        color: const Color(
          0xff003827,
        ),
      ),
    );
  }
}
