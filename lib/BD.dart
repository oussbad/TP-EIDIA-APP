import 'package:flutter/material.dart';

class ListModuleBDPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView.builder(
        itemCount: moduleList.length,
        itemBuilder: (BuildContext context, int index) {
          return ModuleItem(name: moduleList[index]);
        },
      ),
    );
  }
}

class ModuleItem extends StatelessWidget {
  final String name;

  ModuleItem({required this.name});

  // Function to determine icon based on module name
  IconData getIcon(String moduleName) {
    // Add your logic here to assign icons based on module names
    // For now, I'll just use a generic icon
    return Icons.storage; // Using storage icon as a placeholder for database
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            getIcon(name),
            size: 30.0,
          ),
          title: Text(
            name,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Module description goes here',
            style: TextStyle(fontSize: 14.0),
          ),
          onTap: () {
            // Add functionality for tapping on module item
          },
        ),
        Divider(), // Add a divider below each item
      ],
    );
  }
}

// List of module names
List<String> moduleList = [
  "Introduction à la cyber-sécurité",
  "Traitement du signal",
  "Interfaces Homme-Machines",
  "Services réseaux",
  "Mécatronique",
  "Algorithmique Avancée",
  "Traitement d’image",
  "Systèmes embarqués et objets connectés",
  "Recherche opérationnelle",
  "Calcul parallèle et applications réparties",
  "Ingénierie du Support",
  "Statistique Inférentielle Avancée",
  "Ingénierie des Bases de Données",
  "Programmation Python Avancée",
  "Statistique Exploratoire Avancée",
  "Apprentissage Statistique",
  "Méga-données I",
  "Informatique Décisionnelle",
  "Méga-données II",
  "Environnement Java EE",
  "Développement Mobile",
  "Développement d'Applications SaaS",
  "Module Electif I",
  "Module Electif II",
  "Module Electif III",
  "Management Stratégique",
  "Gestion de Projets",
  "Entreprenariat Digital",
  "Communication et Culture Euro-méditerranéenne 1",
  "Communication et Culture Euro-méditerranéenne 2",
  "Communication et Culture Euro-méditerranéenne 3",
  "Communication et Culture Euro-méditerranéenne 4",
  "Communication et Culture Euro-méditerranéenne 5",
];
