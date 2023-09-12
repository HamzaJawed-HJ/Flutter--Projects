import 'package:cleaning_service/colors/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserInputField extends StatelessWidget {
  String title;
  IconData icon;
  TextEditingController controller;
  TextInputType inputType;

  UserInputField({
    super.key,
    required this.title,
    required this.icon,
    required this.controller,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: title,
          contentPadding: EdgeInsets.all(8),
          fillColor: Color.fromARGB(255, 236, 233, 233),
          filled: true,
          prefixIcon: Icon(
            icon,
            color: Color.fromARGB(255, 121, 120, 120),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: blueColor, width: 3)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xff323F4B)),
          ),
        ),
        keyboardType: inputType,
      ),
    );
  }
}
