import 'package:flutter/material.dart';

import 'top_bar.dart';
import 'nav_bar.dart';

void main() => runApp(RM_AreaBook());

// Main-entry class
class RM_AreaBook extends StatelessWidget {
  const RM_AreaBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({ super.key });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Agenda Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('People Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Map', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Sync Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RM: AreaBook', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 48, 87),
      ),
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Agenda',
            backgroundColor: Colors.yellow
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'People',
            backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
            backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.sync),
            label: 'Sync',
            backgroundColor: Colors.blue
          ),
        ],

        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}


