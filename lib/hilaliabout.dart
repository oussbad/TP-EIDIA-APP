import 'package:flutter/material.dart';

class Hilali extends StatelessWidget {
  const Hilali({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
            backgroundImage: AssetImage("images/hilali.png"),
      ),
            Text(
              "Ahmed El Hilali Alaoui",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Expert in Digital Engineering and Artificial Intelligence",
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "About:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Ahmed El Hilali Alaoui is an expert in digital engineering and artificial intelligence, specialized in modeling and optimization. He holds a Ph.D. in optimization from Sidi Mohamed Ben Abdellah University, Tétouan, obtained in 1996. His skills cover a wide range of domains, including modeling, optimization, scheduling problems, logistics, transportation problems, and metaheuristics. With a solid academic background including a DEUG in Physical Mathematics and a Bachelor's degree in Applied Mathematics from Mohammed V University, Rabat, as well as certificates in Analysis and Optimization from Sidi Mohamed Ben Abdellah University, Tétouan, Ahmed El Hilali Alaoui also has diverse professional experience and significant research contributions, illustrated by his publications in his field of expertise.",
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
