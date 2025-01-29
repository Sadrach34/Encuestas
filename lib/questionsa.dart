import 'package:flutter/material.dart';

class QuestionsAPage extends StatefulWidget {
  final Function(int) onPageChanged;

  const QuestionsAPage({super.key, required this.onPageChanged});

  @override
  State<QuestionsAPage> createState() => _QuestionsAPageState();
}

  class _QuestionsAPageState extends State<QuestionsAPage> {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[

          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Cual es tu nombre?"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu nombre';
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Cual es tu telefono?"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu Telefono';
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Cual es tu correo?"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu Correo';
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Cual es tu matricula?"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu Matricula';
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Cual es tu edad?"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu edad';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if(_formKey.currentState!.validate()){
                widget.onPageChanged(3);
              }
              },
            child: const Text('continuar'),
          ),
        ],
      ),
    );
  }
}
