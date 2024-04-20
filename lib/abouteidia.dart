import 'package:flutter/material.dart';

class AboutEidia extends StatefulWidget {
  const AboutEidia({Key? key}) : super(key: key);

  @override
  State<AboutEidia> createState() => _AboutEidiaState();
}

class _AboutEidiaState extends State<AboutEidia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bienvenue à l’EIDIA,',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Notre ambition est de former des cadres de haut niveau en capacité d’accompagner les grands projets et chantiers de développement dans les pays du bassin euro-Méditerranéen et en Afrique subsaharienne dans les métiers du digital et de l’intelligence artificielle.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Pour cela, nous nous appuyons sur un réseau partenarial riche tant sur le plan académique qu’industriel. Au-delà de la formation scientifique, les futurs ingénieurs de l’EIDIA seront sensibilisés à l’histoire et à la culture euro-méditerranéenne, aux enjeux socio-économiques et politiques de la région, à l’entrepreneuriat et à l’innovation.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'L’ambition et l’originalité de notre école résident dans sa forte originalité car elle est la première grande Ecole de formation d’Ingénieurs dans ces domaines au niveau de notre région Euromed',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Les étudiants, recrutés majoritairement au niveau bac, sont originaires du Maroc et d’Afrique Subsaharienne. Les enseignements sont assurés par des enseignants-chercheurs de l’UEMF, des universités partenaires et par des professionnels issus des milieux socio-économiques.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'L’ouverture internationale est accompagnée par une mobilité académique de 6 à 18 mois dans des grandes Ecoles, universités et environnements socioéconomiques partenaires',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
