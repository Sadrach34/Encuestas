import 'package:flutter/material.dart';
import 'models/student.dart';

class QuestionsBPage extends StatefulWidget {
  final Function(int, Student) onPageChanged;
  final Student? student;

  const QuestionsBPage(
      {super.key, required this.onPageChanged, required this.student});

  @override
  State<QuestionsBPage> createState() => _QuestionsBPageState();
}

class _QuestionsBPageState extends State<QuestionsBPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _horarioController = TextEditingController();
  final TextEditingController _carreraController = TextEditingController();
  final TextEditingController _especialidadController = TextEditingController();
  final TextEditingController _promedioController = TextEditingController();
  final TextEditingController _sectorController = TextEditingController();

  @override
  void dispose() {
    _horarioController.dispose();
    _carreraController.dispose();
    _especialidadController.dispose();
    _promedioController.dispose();
    _sectorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nombre: ${widget.student?.name ?? ''}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Correo: ${widget.student?.email ?? ''}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Teléfono: ${widget.student?.phone ?? ''}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Matrícula: ${widget.student?.record ?? ''}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Edad: ${widget.student?.age ?? ''}',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: _horarioController,
                decoration: const InputDecoration(hintText: 'Horario Preferencial (Matutino/Vespertino):'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu horario preferencial';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: _carreraController,
                decoration: const InputDecoration(hintText: 'Carrera a Elegir:'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa la carrera a elegir';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: _especialidadController,
                decoration: const InputDecoration(hintText: 'Especialidad:'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu especialidad';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: _promedioController,
                decoration: const InputDecoration(hintText: 'Promedio:'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu promedio';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: _sectorController,
                decoration: const InputDecoration(hintText: 'Sector de Residencial (norte, sur, poniente, etc):'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu sector de residencial';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  
                  Student student = Student(
                    widget.student?.name ?? '',
                    widget.student?.phone ?? '',
                    widget.student?.email ?? '',
                    widget.student?.record ?? '',
                    widget.student?.age ?? '',
                    horario: _horarioController.text,
                    carrera: _carreraController.text,
                    especialidad: _especialidadController.text,
                    promedio: _promedioController.text,
                    sector: _sectorController.text,
                  );

                  // Llamar a la función onPageChanged con el student
                  widget.onPageChanged(4, student);
                }
              },
              child: const Text('Terminar'),
            ),
          ],
        ),
      ),
    );
  }
}