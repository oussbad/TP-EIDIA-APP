import 'package:flutter/material.dart';

import 'AI.dart';
import 'BD.dart';
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
      SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListModuleAIPage(),
                ),
              );
            },
            child: Image.asset('images/AI.png')),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListModuleBDPage(),
                ),
              );

            },
            child: Image.asset('images/BD.png')),
            Image.asset('images/CS.png'),
            Image.asset('images/RB.png'),
            Image.asset('images/WM.png'),
          ],
        ),
      ),
      SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => hilali(),
                  ),
                );
              },
              child: Image.asset('images/hilali.png'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => maha(),
                  ),
                );
              },
              child: Image.asset('images/mohtadi.png'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => hilali(),
                  ),
                );
              },
              child: Image.asset('images/taha.png'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => hilali(),
                  ),
                );
              },
              child: Image.asset('images/badrkari.png'),
            ),
          ],
        ),
      ),
      Column(
        children: [
          Image.asset('images/hilali.png'),
          Text(
              "Bienvenue à l’EIDIA,Notre ambition est de former des cadres de haut niveau en capacité d’accompagner les grands projets et chantiers de développement dans les pays du bassin euro-Méditerranéen et en Afrique subsaharienne dans les métiers du digital et de l’intelligence artificielle.",
              textAlign: TextAlign.center)
        ],
      ),
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
      appBar: AppBar(title: const Text("EIDIA")),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  const Text('About EIDIA'),
                  Text(
                    "Bienvenue à l’EIDIA,Notre ambition est de former des cadres de haut niveau en capacité d’accompagner les grands projets et chantiers de développement dans les pays du bassin euro-Méditerranéen et en Afrique subsaharienne dans les métiers du digital et de l’intelligence artificielle.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Filiere'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Corps professoral'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Mot du Directeur '),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
