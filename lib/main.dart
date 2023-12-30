import 'package:flutter/material.dart';
import 'package:project/objects_screen.dart';

import 'ar_screen.dart';
import 'home_page.dart';
import 'model_viewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/catalog': (context) => const ObjectsScreen(),
        '/model': (context) => const ModelViewerPage(),
        '/camera': (context) => const ARScreen(),
      },
    );
  }
}
