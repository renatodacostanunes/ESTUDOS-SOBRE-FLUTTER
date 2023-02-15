import 'package:flutter/material.dart';

class RTextField extends StatelessWidget {
  const RTextField({
    super.key,
    required this.controller,
    this.hintText,
  });

  final TextEditingController controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(18.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(18.0),
          ),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}
