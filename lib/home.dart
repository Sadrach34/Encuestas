import 'package:encuestas/dashboard.dart';
import 'package:encuestas/questionsa.dart';
import 'package:encuestas/questionsb.dart';
import 'package:encuestas/summary.dart';
import 'package:encuestas/survey.dart';
import 'package:flutter/material.dart';
import 'models/student.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String title = "Inicio";
  Student? _student;

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    _pages = [
      DashboardPage(),
      SurveyPage(onPageChanged: _pageChange),
      QuestionAPage(onPageChanged: _pageChange),
      QuestionsBPage(onPageChanged: _pageChange, student: _student),
      SummaryPage(onPageChanged: _pageChange, student: _student)
    ];
  }

  static const List<String> _titles = [
    'Dashboard',
    'Encuesta',
    'Preguntas',
    'Preguntas (cont)',
    'Summary'
  ];

  void _pageChange(int index, [Student? student]) {
    setState(() {
      _selectedIndex = index;
      title = _titles[index];

      if (student != null) {
        _student = student;

        _pages[3] =
            QuestionsBPage(onPageChanged: _pageChange, student: _student);

        _pages[4] =
            SummaryPage(onPageChanged: _pageChange, student: _student);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _selectedIndex != 0
            ? IconButton(
                onPressed: () {
                  _pageChange(_selectedIndex - 1);
                },
                icon: Icon(Icons.arrow_back))
            : null,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_titles.elementAt(_selectedIndex)),
      ),
      body: _pages.elementAt(_selectedIndex),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
              onPressed: () => _pageChange(1),
              tooltip: 'Nueva Encuesta',
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
