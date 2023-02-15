import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.function,
    required this.color,
    required this.title,
    super.key,
  });

  final VoidCallback function;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: function,
        child: Text(title));
  }
}
