import 'package:flutter/material.dart';
import 'AI.dart';
import 'BD.dart';
import 'ListFiliere.dart';
import 'abouteidia.dart';
import 'hilaliabout.dart';
import 'maha.dart';

class ListFiliere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListModuleAIPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Setting button color to orange
              ),
              child: Column(
                children: [
                  Image.asset('images/AI.png'),
                  Text(
                    'Artificial Intelligence',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListModuleBDPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Setting button color to orange
              ),
              child: Column(
                children: [
                  Image.asset('images/BD.png'),
                  Text(
                    'Big Data',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            // Add more buttons for other programs with similar structure
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Setting button color to orange
              ),
              child: Column(
                children: [
                  Image.asset('images/CS.png'),
                  Text(
                    'Computer Science',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Setting button color to orange
              ),
              child: Column(
                children: [
                  Image.asset('images/RB.png'),
                  Text(
                    'Robotics',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Setting button color to orange
              ),
              child: Column(
                children: [
                  Image.asset('images/WM.png'),
                  Text(
                    'Web Development',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
