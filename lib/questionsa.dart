import 'package:flutter/material.dart';
import 'package:encuestas/models/student.dart';

class QuestionAPage extends StatefulWidget {
  final Function(int, {Student? student}) onPageChanged;
  const QuestionAPage({super.key, required this.onPageChanged});

  @override
  State<QuestionAPage> createState() => _QuestionAPageState();
}

class _QuestionAPageState extends State<QuestionAPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _matriculaController = TextEditingController();
  final TextEditingController _edadController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _matriculaController.dispose();
    _edadController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(hintText: 'Ingresa tu nombre:'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu nombre';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
              controller: _phoneController,
              decoration:
                  const InputDecoration(hintText: 'Ingresa tu teléfono:'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu nombre';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(hintText: 'Ingresa tu correo:'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu nombre';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
              controller: _matriculaController,
              decoration:
                  const InputDecoration(hintText: 'Ingresa tu matrícula:'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu nombre';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
              controller: _edadController,
              decoration: const InputDecoration(hintText: 'Ingresa tu edad:'),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu nombre';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Crear objeto Student con los datos ingresados
                Student student = Student(
                  _nameController.text,
                  _phoneController.text,
                  _emailController.text,
                  _matriculaController.text,
                  _edadController.text,
                );

                // Llamar a la función onPageChangeddd con el student
                widget.onPageChanged(3, student: student);
              }
            },
            child: const Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
