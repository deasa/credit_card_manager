import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(CreditCardManagementApp());
}

class CreditCardManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credit Card Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
