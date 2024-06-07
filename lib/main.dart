import 'package:flutter/material.dart';
import 'package:mini_app/screens/login_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/cafe_menu_screen.dart';

void main() {
  runApp(CafeMenuApp());
}

class CafeMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smooth Caffee',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => LoadingScreen(),
        '/home': (context) => CafeMenuPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
