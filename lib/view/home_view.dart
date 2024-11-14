/*
import 'dart:io';
import 'package:business_card_app/categories/card_category.dart';
import 'package:business_card_app/categories/text_category.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  File? _selectedImage;
  void _pickImageFromGallery() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 600,
    );
    if (pickedImage == null) {
      return;
    }
    setState(
      () {
        _selectedImage = File(pickedImage.path);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
      onPressed: _pickImageFromGallery,
      label: const Text('Pick An Image'),
      icon: const Icon(Icons.camera_alt_outlined),
    );
    if (_selectedImage != null) {
      content = GestureDetector(
        onTap: _pickImageFromGallery,
        child: Image.file(
          _selectedImage!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: CircleAvatar(
              radius: 200,
              child: content,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          const Texts(
            labelText: 'Name',
            hintText: 'Enter Your Name:',
          ),
          const Texts(
            labelText: 'Age',
            hintText: 'Enter Your Age:',
          ),
          const Texts(
            labelText: 'Work',
            hintText: 'Enter Your Work:',
          ),
          const Divider(
            thickness: 2,
            height: 55,
            color: Colors.lightBlueAccent,
            indent: 40,
            endIndent: 40,
          ),
          const Cards(
            labelText: 'Phone',
            hintText: 'Enter Your Number:',
            icon: Icon(
              Icons.phone,
              size: 30,
              color: Colors.green,
            ),
          ),
          const Cards(
            labelText: 'Email',
            hintText: 'Enter Your Email:',
            icon: Icon(
              Icons.account_circle,
              size: 30,
              color: Colors.red,
            ),
          ),
          const Cards(
            labelText: 'Facebook',
            hintText: 'Enter Your Name In Facebook:',
            icon: Icon(
              Icons.facebook,
              size: 30,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
*/
import 'package:business_card_app/cubits/take_value_cubit/take_value_cubit.dart';
import 'package:business_card_app/view/work_view.dart';
import 'package:business_card_app/widgets/circle_avatar_widget/custom_circle_avatar_widget.dart';
import 'package:business_card_app/widgets/general_widget/custom_some_contain_the_secreen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String homeViewId = 'HomeView';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomSomeContainTheSecreenWidget(
                viewNumber: '1/6',
                firstTextInTextWidget: 'Name',
                secondTextInTextWidget: 'What\'s Your Name?',
                onChanged: (value) {
                  BlocProvider.of<TakeValueCubit>(context).takeValueMethod(
                    takeValue: value,
                    index: 0,
                  );
                },
              ),
              CustomCircleAvatarWidget(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).pushNamed(
                      WorkView.workViewId,
                    );
                  } else {
                    setState(
                      () {
                        autovalidateMode = AutovalidateMode.always;
                      },
                    );
                  }
                },
                text: 'Go',
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
