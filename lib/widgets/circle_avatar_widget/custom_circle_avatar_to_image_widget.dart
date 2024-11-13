import 'package:flutter/material.dart';

class CustomCircleAvatarToImageWidget extends StatelessWidget {
  const CustomCircleAvatarToImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(
        0xff07723A,
      ),
      radius: 80,
      child: CircleAvatar(
        backgroundColor: const Color(
          0xffE2BB59,
        ),
        radius: 70,
        child: ClipOval(
          child: Image.asset(
            'assets/image/my_image.jpg',
            fit: BoxFit.cover,
            height: 130,
            width: 130,
          ),
        ),
      ),
    );
  }
}
