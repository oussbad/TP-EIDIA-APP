import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange, // You can change this to your desired primary color
        backgroundColor: Colors.orange,
        fontFamily: 'Roboto',// Set the background color to orange
      ),
      home: MyHomePage(),
    );
  }
}

