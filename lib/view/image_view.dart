/*
import 'dart:io';
import 'package:business_card_app/constant.dart';
import 'package:business_card_app/cubits/take_value_cubit/take_value_cubit.dart';
import 'package:business_card_app/view/front_and_back_business_card_view.dart';
import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});
  static String imageViewId = 'ImageView';

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  late TakeValueCubit takeValueCubit;
  @override
  void initState() {
    takeValueCubit = BlocProvider.of<TakeValueCubit>(context);
    super.initState();
  }

  File? selectedImage;
  Future<void> selectImageMethod() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? pickedImageFile = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedImageFile != null) {
      setState(
        () {
          selectedImage = File(
            pickedImageFile.path,
          );
        },
      );
    }
    if (selectedImage != null) {
      takeValueCubit.takeValueMethod(
        takeValue: selectedImage!.path,
        index: 5,
      );
    }
  }

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
            height: 70,
          ),
          if (selectedImage != null)
            Column(
              children: [
                Image.file(
                  selectedImage!,
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          TextButton(
            onPressed: selectImageMethod,
            child: const CustomTextWidget(
              text: 'Select Image 📷',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(
                0xffD0BCFF,
              ),
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCircleAvatarWidget(
                text: 'Back',
                backgroundColor: kRedColor,
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
                    FrontAndBackBusinessCardView.frontAndBackBusinessCardViewId,
                  );
                },
                text: 'Go',
                backgroundColor: kGreenColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/
