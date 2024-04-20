import 'package:flutter/material.dart';

class HilaliAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text('Professor details go here.'),
      ),
    );
  }
}

class CorpProfessionelle extends StatefulWidget {
  const CorpProfessionelle({Key? key}) : super(key: key);

  @override
  State<CorpProfessionelle> createState() => _CorpProfessionelleState();
}

class _CorpProfessionelleState extends State<CorpProfessionelle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _professors.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildProfessorTile(context, _professors[index]);
          },
        ),
      ),
    );
  }
}

Widget _buildProfessorTile(BuildContext context, Professor professor) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => professor.page),
      );
    },
    child: Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: professor.name,
              child: CircleAvatar(
                backgroundImage: AssetImage(professor.imagePath),
                radius: 30,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                professor.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    ),
  );
}

class Professor {
  final String imagePath;
  final String name;
  final Widget page;

  Professor({
    required this.imagePath,
    required this.name,
    required this.page,
  });
}

final List<Professor> _professors = [
  Professor(
    imagePath: 'images/hilali.png',
    name: 'Dr. Hilali Allaoui',
    page: HilaliAbout(),
  ),
  // Add more professors here
];


