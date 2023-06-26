import 'package:flutter/material.dart';

class MainBar extends StatelessWidget {
  const MainBar({required this.title, super.key});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(color: const Color.fromRGBO(0, 48, 87, 1.0)),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            color: Color.fromARGB(255, 255, 255, 255),
            disabledColor: Color.fromARGB(255, 255, 255, 255),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            disabledColor: Color.fromARGB(255, 255, 255, 255),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}