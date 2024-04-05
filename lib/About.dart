import 'package:flutter/material.dart';
import 'package:tp_allami/hilaliabout.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Text("a props"),
                Text("Filieres"),
                Text("Corps professoral"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Image.network(
                      "https://ueuromed.org/sites/default/files/styles/logo/public/2021-12/logo-eidia.jpg"),
                  Text(
                      "Bienvenue à l’EIDIA,Notre ambition est de former des cadres de haut niveau en capacité d’accompagner les grands projets et chantiers de développement dans les pays du bassin euro-Méditerranéen et en Afrique subsaharienne dans les métiers du digital et de l’intelligence artificielle.",
                      textAlign: TextAlign.center)
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset('images/AI.png'),
                    Image.asset('images/BD.png'),
                    Image.asset('images/CS.png'),
                    Image.asset('images/RB.png'),
                    Image.asset('images/WM.png')
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
                                  builder: (context) => hilali()));
                        },
                        child: Image.asset('images/hilali.png')),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => hilali()));
                        },
                        child: Image.asset('images/maha.png'),),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => hilali()));
                        },
                        child:  Image.asset('images/mohtadi.png'),),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => hilali()));
                        },
                        child:   Image.asset('images/taha.png'),),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => hilali()));
                        },
                        child:  Image.asset('images/badrkari.png')),




                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
