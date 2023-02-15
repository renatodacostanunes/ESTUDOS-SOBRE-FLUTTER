// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TransparentBottomBarWidget extends StatefulWidget {
  final void Function(int selectedIndex) onChange;
  const TransparentBottomBarWidget({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  State<TransparentBottomBarWidget> createState() =>
      _TransparentBottomBarWidgetState();
}

class _TransparentBottomBarWidgetState
    extends State<TransparentBottomBarWidget> {
  int selectedIndex = 0;

  void changeIndex(int index) {
    // Aqui eu digo que minha função onChange, irá usar esse index como parâmetro...
    widget.onChange(index);
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black,
            Colors.transparent,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TransparentBottomItem(
            icon: Icons.home,
            onTap: () => changeIndex(0),
            isSelected: selectedIndex == 0,
          ),
          _TransparentBottomItem(
            icon: Icons.search,
            onTap: () => changeIndex(1),
            isSelected: selectedIndex == 1,
          ),
          _TransparentBottomItem(
            icon: Icons.favorite,
            onTap: () => changeIndex(2),
            isSelected: selectedIndex == 2,
          ),
          _TransparentBottomItem(
            icon: Icons.settings,
            onTap: () => changeIndex(3),
            isSelected: selectedIndex == 3,
          ),
        ],
      ),
    );
  }
}

class _TransparentBottomItem extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final bool isSelected;
  const _TransparentBottomItem({
    required this.onTap,
    required this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected ? const Color(0xFF68ff9c) : Colors.transparent,
      borderRadius: BorderRadius.circular(100.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(100.0),
        onTap: isSelected ? null : onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
