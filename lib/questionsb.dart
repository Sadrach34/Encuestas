import 'package:flutter/material.dart';
import 'package:encuestas/models/student.dart';

class QuestionBPage extends StatelessWidget {
  final Function(int) onPageChanged;
  final Student student;

  const QuestionBPage(
      {super.key, required this.onPageChanged, required this.student});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Nombre: ${student.name}",),
          Text("Teléfono: ${student.phone}"),
          Text("Correo: ${student.email}"),
          Text("Matrícula: ${student.record}"),
          Text("Edad: ${student.age}"),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => onPageChanged(4),
            child: const Text('Terminar'),
          ),
        ],
      ),
    );
  }
}
