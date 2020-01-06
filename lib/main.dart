import 'package:flutter/material.dart';

import './screens/calculator_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorPage(),
      title: "claculator",
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColorBrightness: Brightness.light,
        colorScheme: ColorScheme.light(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}