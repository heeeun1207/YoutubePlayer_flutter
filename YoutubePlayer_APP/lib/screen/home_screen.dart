import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); // Added a semicolon here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('home screen'),
    );
  }
}