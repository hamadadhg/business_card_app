/*
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.icon,
  });
  final String labelText;
  final String hintText;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      color: Colors.white,
      height: 65,
      width: 80,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: icon,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
          label: Text(
            labelText,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Dancing Script',
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontFamily: 'Dancing Script',
            fontSize: 23,
          ),
        ),
        style: const TextStyle(
          fontFamily: 'Dancing Script',
          fontSize: 24,
        ),
      ),
    );
  }
}
*/