import 'package:flutter/material.dart';
import 'models/student.dart';

class QuestionsBPage extends StatelessWidget {
  final Function(int) onPageChanged;
  final Student? student;

  const QuestionsBPage(
      {super.key, required this.onPageChanged, required this.student});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Matricula: ${student?.record ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Nombre: ${student?.name ?? ''}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Correo: ${student?.email ?? ''}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Telefono: ${student?.phone ?? ''}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Edad: ${student?.age ?? ''}',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            onPressed: () => onPageChanged(4),
            child: Text('Terminar'),
          ),
        ],
      ),
    );
  }
}
