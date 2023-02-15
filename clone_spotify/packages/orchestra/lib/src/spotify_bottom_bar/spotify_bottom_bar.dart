import 'package:flutter/material.dart';

class SpotifyBottomBar extends StatefulWidget {
  final void Function(int value) onTap;
  const SpotifyBottomBar({
    super.key,
    required this.onTap,
  });

  @override
  State<SpotifyBottomBar> createState() => _SpotifyBottomBarState();
}

class _SpotifyBottomBarState extends State<SpotifyBottomBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.7),
      onTap: (value) {
        widget.onTap(value);
        setState(() {
          selectedIndex = value;
        });
      },
      currentIndex: selectedIndex,
      items: const [
        BottomNavigationBarItem(
          label: "Início",
          icon: Icon(
            Icons.home_outlined,
          ),
          activeIcon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          label: "Buscar",
          icon: Icon(
            Icons.search,
          ),
          activeIcon: Icon(Icons.saved_search_sharp),
        ),
        BottomNavigationBarItem(
          label: "Sua Biblioteca",
          icon: Icon(
            Icons.library_books_outlined,
          ),
          activeIcon: Icon(Icons.library_books),
        ),
      ],
    );
  }
}
