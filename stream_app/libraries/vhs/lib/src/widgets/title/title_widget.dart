import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircleAvatar(
                radius: 2.0,
                backgroundColor: Color(0xFF68FF9B),
              ),
              SizedBox(width: 8.0),
              CircleAvatar(
                radius: 2.0,
                backgroundColor: Colors.grey,
              ),
              SizedBox(width: 8.0),
              CircleAvatar(
                radius: 2.0,
                backgroundColor: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
