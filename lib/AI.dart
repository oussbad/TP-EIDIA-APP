import 'package:flutter/material.dart';

class ListModuleAIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Modules d\'IA'),
      ),
      body: ListView(
        children: <Widget>[
          ModuleItem(name: "Introduction à la cybersécurité"),
          ModuleItem(name: "Traitement du Signal"),
          ModuleItem(name: "Interfaces Hommes-Machines"),
          ModuleItem(name: "Mécatronique"),
          ModuleItem(name: "Services et Protocoles Réseaux"),
          ModuleItem(name: "Langues et Culture Euro-Med 1"),
          ModuleItem(name: "Techniques Avancées de Conception Algorithmique"),
          ModuleItem(name: "Traitement d’Image"),
          ModuleItem(name: "Systèmes Embarqués et Objets Connectés"),
          ModuleItem(name: "Recherche Opérationnelle"),
          ModuleItem(name: "Calcul Parallèle et Applications Réparties"),
          ModuleItem(name: "Langues et Culture et Euro-Med 2"),
          ModuleItem(name: "Reconnaissance des Formes"),
          ModuleItem(name: "OpenCV et Computer Vision"),
          ModuleItem(name: "Bases de Données XML et NoSQL"),
          ModuleItem(name: "Théorie des Graphes"),
          ModuleItem(name: "Langage R et Analyse des Données"),
          ModuleItem(name: "Management de Projet"),
          ModuleItem(name: "Langues et Communication I"),
          ModuleItem(name: "Traitement Automatique des Langues Naturelles"),
          ModuleItem(name: "Représentation des Connaissances et Apprentissage"),
          ModuleItem(name: "Traitement Avancé des Images et Reconnaissance Optique des Caractères"),
          ModuleItem(name: "Traitement de la Parole : Synthèse Vocale"),
          ModuleItem(name: "Projet de Fin d’Année"),
          ModuleItem(name: "Management Stratégique"),
          ModuleItem(name: "Langues et Communication II"),
          ModuleItem(name: "Systèmes Multi-Agents"),
          ModuleItem(name: "Services Web et Moteurs de Recherche"),
          ModuleItem(name: "Réalité Virtuelle et Environnement 3D sous Blender"),
          ModuleItem(name: "Logique Floue et Théorie de l’Incertain"),
          ModuleItem(name: "Développement Mobile Android"),
          ModuleItem(name: "Management d’Innovation"),
          ModuleItem(name: "Langues et Communication II"),
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
