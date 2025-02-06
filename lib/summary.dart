import 'package:flutter/material.dart';
import 'models/student.dart';

class SummaryPage extends StatelessWidget {
  final Function(int) onPageChanged;
  final Student? student;

  const SummaryPage(
      {super.key, required this.onPageChanged, required this.student});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // questionsa.dart
          Text(
            'Nombre: ${student?.name ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Correo: ${student?.email ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Teléfono: ${student?.phone ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Matrícula: ${student?.record ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Edad: ${student?.age ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),

          // questionsb.dart
          Text(
            'Horario Preferencial: ${student?.horario ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Carrera a Elegir: ${student?.carrera ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Especialidad: ${student?.especialidad ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Promedio: ${student?.promedio ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Sector de Residencial: ${student?.sector ?? 'N/A'}',
            style: TextStyle(fontSize: 20),
          ),

          ElevatedButton(
            onPressed: () => {onPageChanged(0)},
            child: const Text('Listo'),
          ),
        ],
      ),
    );
  }
}
