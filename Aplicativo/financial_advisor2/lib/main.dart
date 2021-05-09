import 'package:flutter/material.dart';
import 'package:financial_advisor2/screens/financial_detalhes_screen.dart';
import 'package:financial_advisor2/screens/financial_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial Advisor App',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(0, 16, 100, 1.0),
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FinancialScreen(),
        '/financial_detalhes': (context) => FinancialDetalhesScreen(),
      },
    );
  }
}

/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
