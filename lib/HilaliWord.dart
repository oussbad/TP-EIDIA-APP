import 'package:flutter/material.dart';
import 'dart:async';

class YourWidget extends StatefulWidget {
  @override
  _YourWidgetState createState() => _YourWidgetState();
}

class _YourWidgetState extends State<YourWidget> {
  String _typedText = '';

  @override
  void initState() {
    super.initState();

    // Start typing effect
    _startTypingEffect();
  }

  void _startTypingEffect() {
    String fullText =
    """Notre ambition est de former des cadres de haut niveau en capacité d’accompagner les grands projets et chantiers de développement dans les pays du bassin euro-Méditerranéen et en Afrique subsaharienne dans les métiers du digital et de l’intelligence artificielle.

Pour cela, nous nous appuyons sur un réseau partenarial riche tant sur le plan académique qu’industriel. Au-delà de la formation scientifique, les futurs ingénieurs de l’EIDIA seront sensibilisés à l’histoire et à la culture euro-méditerranéenne, aux enjeux socio-économiques et politiques de la région, à l’entrepreneuriat et à l’innovation.

L’ambition et l’originalité de notre école résident dans sa forte originalité car elle est la première grande Ecole de formation d’Ingénieurs dans ces domaines au niveau de notre région Euromed

Les étudiants, recrutés majoritairement au niveau bac, sont originaires du Maroc et d’Afrique Subsaharienne. Les enseignements sont assurés par des enseignants-chercheurs de l’UEMF, des universités partenaires et par des professionnels issus des milieux socio-économiques.

L’ouverture internationale est accompagnée par une mobilité académique de 6 à 18 mois dans des grandes Ecoles, universités et environnements socioéconomiques partenaires""";

    int index = 0;
    const duration = const Duration(milliseconds: 100); // Adjust speed here
    Timer.periodic(duration, (Timer timer) {
      if (index < fullText.length) {
        setState(() {
          _typedText += fullText[index];
          index++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: ClipOval(
                child: Container(
                  width: 200, // Adjust size as needed
                  height: 200, // Adjust size as needed
                  child: Image.asset(
                    'images/hilali.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children: [
                  Text(
                    "Mot du Directeur Pédagogique de l’EIDIA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5, // Adjust height as needed
                    child: ListView(
                      children: [
                        Text(
                          _typedText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: Colors.white),
                      SizedBox(width: 5.0),
                      Text(
                        "a.elhilali-alaoui@ueuromed.org",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
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
