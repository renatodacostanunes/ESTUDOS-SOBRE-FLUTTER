import 'package:flutter/material.dart';
import 'package:orchestra/orchestra.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x0ff1130f),
      body: Column(
        children: [
          const SizedBox(
            height: 24.0,
          ),
          const SpotifyAppBar(),
          Container(
            height: 90.0,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SmallCard(),
                SmallCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
