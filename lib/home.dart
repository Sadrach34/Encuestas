import 'package:encuestas/dashboard.dart';
import 'package:encuestas/questionsa.dart';
import 'package:encuestas/questionsb.dart';
import 'package:encuestas/summary.dart';
import 'package:encuestas/survey.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  static const List<Widget> _pages = <Widget>[
    DashboardPage(),
    SurveyPage(),
    QuestionsAPage(),
    QuestionsBPage(),
    SummaryPage(),
  ];

  static const List<String> _titles = <String>[
    'Dashboard',
    'Survey',
    'Questions A',
    'Questions B',
    'Summary',
  ];

  void _PageChanged(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_titles.elementAt(_selectIndex)),
      ),
      body: _pages.elementAt(_selectIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _PageChanged(1),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
