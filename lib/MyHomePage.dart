import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tp_allami/drawerTP.dart';

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
            //context, MaterialPageRoute(builder: (context) => TabBarDemo()))
            context, MaterialPageRoute(builder: (context) => Dr()))

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 180),
        child: Center(
          child: Column(
            children: [
              Image.network(
                  "https://ueuromed.org/sites/default/files/styles/logo/public/2021-12/logo-eidia.jpg"),

              Text("Welcome To EIDIA Demo")
            ],
          ),
        ),
      ),
    );
  }
}
