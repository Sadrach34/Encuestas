import 'package:flutter/material.dart';

class SurveyPage extends StatelessWidget {
  final Function(int) onPageChanged;

  const SurveyPage({super.key, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Survey',
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () => {onPageChanged(2)} , child: const Text('comenzar'),
            ),
          ],
        ),
    );
  }
}
