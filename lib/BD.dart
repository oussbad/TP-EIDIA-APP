import 'package:flutter/material.dart';

class ListModuleBDPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Modules de Base de Données'),
      ),
      body: ListView(
        children: <Widget>[
          ModuleItem(name: "Introduction à la cyber-sécurité"),
          ModuleItem(name: "Traitement du signal"),
          ModuleItem(name: "Interfaces Homme-Machines"),
          ModuleItem(name: "Services réseaux"),
          ModuleItem(name: "Mécatronique"),
          ModuleItem(name: "Algorithmique Avancée"),
          ModuleItem(name: "Traitement d’image"),
          ModuleItem(name: "Systèmes embarqués et objets connectés"),
          ModuleItem(name: "Recherche opérationnelle"),
          ModuleItem(name: "Calcul parallèle et applications réparties"),
          ModuleItem(name: "Ingénierie du Support"),
          ModuleItem(name: "Statistique Inférentielle Avancée"),
          ModuleItem(name: "Ingénierie des Bases de Données"),
          ModuleItem(name: "Programmation Python Avancée"),
          ModuleItem(name: "Statistique Exploratoire Avancée"),
          ModuleItem(name: "Apprentissage Statistique"),
          ModuleItem(name: "Méga-données I"),
          ModuleItem(name: "Informatique Décisionnelle"),
          ModuleItem(name: "Méga-données II"),
          ModuleItem(name: "Environnement Java EE"),
          ModuleItem(name: "Développement Mobile"),
          ModuleItem(name: "Développement d'Applications SaaS"),
          ModuleItem(name: "Module Electif I"),
          ModuleItem(name: "Module Electif II"),
          ModuleItem(name: "Module Electif III"),
          ModuleItem(name: "Management Stratégique"),
          ModuleItem(name: "Gestion de Projets"),
          ModuleItem(name: "Entreprenariat Digital"),
          ModuleItem(name: "Communication et Culture Euro-méditerranéenne 1"),
          ModuleItem(name: "Communication et Culture Euro-méditerranéenne 2"),
          ModuleItem(name: "Communication et Culture Euro-méditerranéenne 3"),
          ModuleItem(name: "Communication et Culture Euro-méditerranéenne 4"),
          ModuleItem(name: "Communication et Culture Euro-méditerranéenne 5"),
        ],
      ),
    );
  }
}

class ModuleItem extends StatelessWidget {
  final String name;

  ModuleItem({required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
    );
  }
}


