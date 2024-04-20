import 'package:flutter/material.dart';

class WhyChooseEIDIA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Filière très sollicitée dans le marché d’emploi.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '- Mobilité Internationale (Stages, ERASMUS, Echange…)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '- Laboratoires très bien équipés:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '  - Centre de Calcul avec des Workstation très haute performance.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '  - Centre de Robotique équipé de robots mobile, humanoïde (Nao, Alpha…)',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '  - Centre de Systèmes embarqués équipé de Capteurs, Cartes Arduino/Raspberry Pi, Caméra…',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '  - Centre de Réalité Virtuelle avec des casque et manettes de dernière génération',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '- Equipe pédagogique hautement qualifiée.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
