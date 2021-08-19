import 'package:app_mobile/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devnology',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Color(0xFF2E3746),
      ),
      home: LoginScreen(),
    );
  }
}
