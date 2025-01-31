import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const Encuestas());
}

class Encuestas extends StatelessWidget {
  const Encuestas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Encuestas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}