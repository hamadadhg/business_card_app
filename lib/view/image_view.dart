import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});
  static String imageViewId = 'ImageView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'hi',
        ),
      ),
    );
  }
}
