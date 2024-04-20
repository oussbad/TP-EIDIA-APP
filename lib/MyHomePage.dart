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
    // Redirect to another screen after 3 seconds
    Timer(Duration(seconds: 3), () =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Dr()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Use a Flexible widget to prevent overflow
            Flexible(
              child: Image.network(
                "https://ueuromed.org/sites/default/files/styles/logo/public/2021-12/logo-eidia.jpg",
                fit: BoxFit.contain, // Adjust the image fit
              ),
            ),
            SizedBox(height: 20), // Add some space between image and text
            Text(
              "Welcome To EIDIA Demo",
              style: TextStyle(
                fontSize: 24, // Increase font size for better visibility
                fontWeight: FontWeight.bold, // Make text bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
