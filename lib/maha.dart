import 'package:flutter/material.dart';
class maha extends StatefulWidget {
  const maha({Key? key}) : super(key: key);

  @override
  State<maha> createState() => _mahaState();
}

class _mahaState extends State<maha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("A propos du professeur",textAlign: TextAlign.center),),
      body: Column(
        children: [
          Text(""
              " Meryam El Mohtadi est une professionnelle de l'ingénierie digitale et de l'intelligence artificielle, avec une expertise particulière dans les domaines de l'apprentissage automatique, de la science des données et de la recherche opérationnelle. Elle détient un Ph.D., un M.Sc.A. et un B. Ing. du Département de mathématiques et de génie industriel de Polytechnique Montréal. Ses domaines d expertise incluent l intelligence artificielle, l apprentissage automatique, les outils de prise de décision en temps réel, la science des données, l analytique avancée, le data mining, la recherche opérationnelle et la gestion des systèmes de transport en temps réel. En plus de ses formations académiques, elle a également acquis une expérience professionnelle significative, ainsi que des publications dans son domaine d expertise "          )
        ],
      ),
    );
  }
}
