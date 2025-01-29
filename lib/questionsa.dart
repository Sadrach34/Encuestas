import 'package:flutter/material.dart';

class QuestionsAPage extends StatelessWidget {
  final Function(int) onPageChanged;

  const QuestionsAPage({super.key, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Questionsa',
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () => {onPageChanged(3)} , child: const Text('continuar'),
            ),
          ],
        ),
    );
  }
}
