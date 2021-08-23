import 'package:flutter/material.dart';
import 'package:readercon/View/recursos/barraSuperior.dart';
import 'package:readercon/View/recursos/menu.dart';

class Suporte extends StatefulWidget {
  @override
  State createState() => new SuporteState();
}

class SuporteState extends State<Suporte> {
  final suporte = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new BarraSuperior(),
        drawer: new MenuDrawer(),
        body: SingleChildScrollView(
            child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey[700]),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                new Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 40,
                ),
                // Título

                // Inputs
                // campoInput("", username),
              ]),
        )));
  }
}

Container campoInput(String nomeCampo, TextEditingController controlador) {
  return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: TextField(
          // Atributo que recebe o valor do campo
          controller: controlador,
          decoration: InputDecoration(
              labelText: nomeCampo, // Nome do campo
              labelStyle: TextStyle(color: Colors.white, fontSize: 18),

              // Borda do Input
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),

              // Borda do Input selecionado
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)))));
}
