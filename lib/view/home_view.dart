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
import 'package:business_card_app/widgets/text_widget/custom_text_field_widget.dart';
import 'package:business_card_app/widgets/text_widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          CustomTextWidget(
            text: 'Name',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 6,
          ),
          CustomTextWidget(
            text: 'What\'s Your Name?',
            fontSize: 17,
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextFieldWidget(),
        ],
      ),
    );
  }
}
