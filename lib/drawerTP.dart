import 'package:flutter/material.dart';

import 'AI.dart';
import 'BD.dart';
import 'CorpProfessionelle.dart';
import 'HilaliWord.dart';
import 'ListFiliere.dart';
import 'abouteidia.dart';
import 'futureetudant.dart';
import 'hilaliabout.dart';
import 'maha.dart';

class Dr extends StatefulWidget {
  const Dr({Key? key}) : super(key: key);

  @override
  State<Dr> createState() => _DrState();
}

class _DrState extends State<Dr> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      AboutEidia(),
      ListFiliere(),
      CorpProfessionelle(),

      YourWidget(),
      WhyChooseEIDIA()
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Eidia'),
        backgroundColor: Colors.orange, // Setting app bar color to orange
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://ueuromed.org/sites/default/files/styles/logo/public/2021-12/logo-eidia.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null,
            ),
            ListTile(
              leading: Icon(Icons.computer),
              title: const Text('About EIDIA'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.subject),
              title: const Text('Filiere'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: const Text('Corps professoral'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: const Text('Mot du Directeur'),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: const Text('Futurs étudiants'),
              selected: _selectedIndex == 4,
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

