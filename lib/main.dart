import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/results_page.dart';
import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E23),
        scaffoldBackgroundColor: Color(0xFF0A0E23),
        canvasColor: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        'result': (context) => ResultsPage()
      },
    );
  }
}
