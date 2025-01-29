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
            child: TextField(
              decoration: InputDecoration(hintText: "Cual es tu nombre?"),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(hintText: "Cual es tu telefono?"),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(hintText: "Cual es tu correo?"),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(hintText: "Cual es tu matricula?"),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(hintText: "Cual es tu edad?"),
            ),
          ),
          ElevatedButton(
            onPressed: () => {widget.onPageChanged(3)},
            child: const Text('continuar'),
          ),
        ],
      ),
    );
  }
}
