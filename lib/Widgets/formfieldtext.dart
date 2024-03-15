import 'package:flutter/material.dart';
import 'package:flutter_calculator_provider/Constant/color.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        controller: TextEditingController(),
        style: const TextStyle(fontSize: 30),
        decoration: const InputDecoration(
          border: InputBorder.none,
          fillColor: Appcolor.primarycolor,
          filled: true,
        ),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}