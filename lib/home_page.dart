import 'package:flutter/material.dart';

import 'ar_screen.dart';
import 'objects_screen.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/bottom-navigation";

  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List<Map<String, Object>>? _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': const ObjectsScreen(),
        'title': 'Objects',
      },
      {
        'page': const ARScreen(),
        'title': 'Camera',
      },
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages?[_selectedPageIndex]['page'] as Widget ?? Container(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        unselectedItemColor: Colors.black26,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_in_ar),
            label: "Objects",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: "Camera",
          ),
        ],
      ),
    );
  }
}
