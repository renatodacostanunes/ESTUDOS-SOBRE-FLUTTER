import 'package:clone_spotify2/src/features/home/views/home_page/home_page.dart';
import 'package:clone_spotify2/src/features/library/views/library_page/library_page.dart';
import 'package:clone_spotify2/src/features/search/views/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:orchestra/orchestra.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Navigator(
        initialRoute: "/",
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => const HomePage(),
          );
        },
        key: navigatorKey,
      ),
      bottomNavigationBar: SpotifyBottomBar(
        onTap: (value) {
          switch (value) {
            case 0:
              navigatorKey.currentState?.push(
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              break;

            case 1:
              navigatorKey.currentState?.push(
                MaterialPageRoute(builder: (context) => const SearchPage()),
              );
              break;

            case 2:
              navigatorKey.currentState?.push(
                MaterialPageRoute(builder: (context) => const LibraryPage()),
              );
              break;
          }
        },
      ),
    );
  }
}
