import 'dart:async';

import 'package:flutter/material.dart';

import 'About.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => TabBarDemo()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Welcome To EIDIA Demo")
        ],
      ),
    );
  }
}
