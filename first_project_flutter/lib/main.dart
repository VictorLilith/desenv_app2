import 'package:first_project_flutter/Calculadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraSimples());
}

class CalculadoraSimples extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculadora simples",
      theme: new ThemeData(primarySwatch: Colors.lightGreen),
      home: new Calculadora(),
    );
  }
}
