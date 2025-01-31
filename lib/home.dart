import 'package:encuestas/dashboard.dart';
import 'package:encuestas/models/student.dart';
import 'package:encuestas/questionsa.dart';
import 'package:encuestas/questionsb.dart';
import 'package:encuestas/summary.dart';
import 'package:encuestas/survey.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  late Student _student;

  @override
@override
void initState() {
  super.initState();
  _student = Student("", "", "", "", "");
}

  static const List<String> _names = <String>[
    "Encuestas",
    "Dashboard",
    "Survey",
    "QuestionsA",
    "QuestionsB",
    "Summary",
  ];

  void _pageChange(int index, {Student? student}) {
    setState(() {
      _selectedindex = index;
      if (student != null) {
        _student = student;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      DashboardPage(),
      SurveyPage(onPageChanged: _pageChange),
      QuestionAPage(onPageChanged: _pageChange),
      QuestionBPage(onPageChanged: _pageChange, student: _student),
      SummaryPage(onPageChanged: _pageChange),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: _selectedindex != 0
            ? IconButton(
                onPressed: () => _pageChange(_selectedindex - 1),
                icon: const Icon(Icons.arrow_back),
              )
            : null,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_names.elementAt(_selectedindex)),
      ),
      body: pages.elementAt(_selectedindex),
      floatingActionButton: _selectedindex == 0
          ? FloatingActionButton(
              onPressed: () => _pageChange(1),
              tooltip: 'Nueva Encuesta',
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}