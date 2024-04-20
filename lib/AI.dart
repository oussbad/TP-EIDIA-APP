import 'package:flutter/material.dart';

class ListModuleAIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Modules d\'IA'),
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
    return Icons.book;
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
  "Introduction à la cybersécurité",
  "Traitement du Signal",
  "Interfaces Hommes-Machines",
  "Mécatronique",
  "Services et Protocoles Réseaux",
  "Langues et Culture Euro-Med 1",
  "Techniques Avancées de Conception Algorithmique",
  "Traitement d’Image",
  "Systèmes Embarqués et Objets Connectés",
  "Recherche Opérationnelle",
  "Calcul Parallèle et Applications Réparties",
  "Langues et Culture et Euro-Med 2",
  "Reconnaissance des Formes",
  "OpenCV et Computer Vision",
  "Bases de Données XML et NoSQL",
  "Théorie des Graphes",
  "Langage R et Analyse des Données",
  "Management de Projet",
  "Langues et Communication I",
  "Traitement Automatique des Langues Naturelles",
  "Représentation des Connaissances et Apprentissage",
  "Traitement Avancé des Images et Reconnaissance Optique des Caractères",
  "Traitement de la Parole : Synthèse Vocale",
  "Projet de Fin d’Année",
  "Management Stratégique",
  "Langues et Communication II",
  "Systèmes Multi-Agents",
  "Services Web et Moteurs de Recherche",
  "Réalité Virtuelle et Environnement 3D sous Blender",
  "Logique Floue et Théorie de l’Incertain",
  "Développement Mobile Android",
  "Management d’Innovation",
  "Langues et Communication II",
];
