
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hilali extends StatefulWidget {
  const hilali({Key? key}) : super(key: key);

  @override
  State<hilali> createState() => _hilaliState();
}

class _hilaliState extends State<hilali> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("A propos du professeur",textAlign: TextAlign.center),),
      body: Column(
        children: [
          Text(" Un expert en ingénierie digitale et en intelligence artificielle, spécialisé dans la modélisation et l'optimisation. Il détient un doctorat d'état en optimisation de l'Université Sidi Mohamed Ben Abdellah, Tétouan, obtenu en 1996. Ses compétences couvrent un large éventail de domaines, notamment la modélisation, l'optimisation, les problèmes d’ordonnancement, la logistique, les problèmes de transport et les métaheuristiques. Avec une solide formation académique comprenant un DEUG en Mathématiques Physiques et une Licence en Mathématiques Appliquées de l'Université Mohammed V, Rabat, ainsi que des certificats en Analyse et en Optimisation de l'Université Sidi Mohamed Ben Abdellah, Tétouan, Ahmed El Hilali Alaoui a également une expérience professionnelle diversifiée et des contributions significatives à la recherche, illustrées par ses publications dans son domaine d'expertise."),
        ],
      ),
    );
  }
}
