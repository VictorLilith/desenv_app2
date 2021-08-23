import 'package:flutter/material.dart';
import 'package:readercon/View/login.dart';
import 'package:readercon/View/recursos/barraSuperior.dart';

class Cadastro extends StatefulWidget {
  @override
  State createState() => new CadastroState();
}

class CadastroState extends State<Cadastro> {
  final username = TextEditingController();
  final nome = TextEditingController();
  final sobrenome = TextEditingController();
  final email = TextEditingController();
  final senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new BarraSuperior(),
        body: SingleChildScrollView(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700]),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Título
                      new Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(bottom: 15),
                          child: Text("Cadastrar Conta",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 24))),

                      // Inputs
                      campoInput("Username", username),
                      campoInput("Nome", nome),
                      campoInput("Sobrenome", sobrenome),
                      campoInput("E-mail", email),
                      campoInput("Senha", senha),

                      SizedBox(height: 15),

                      // Botões
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Botão Cadastrar
                            new Builder(builder: (BuildContext context) {
                              return ElevatedButton(
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 10),
                                      child: Text("Cadastrar",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18))),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.orange),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  });
                            }),
                          ]),
                    ]))));
  }

  Container campoInput(String nomeCampo, TextEditingController controlador) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: TextField(
            // Atributo que recebe o valor do campo
            controller: controlador,
            decoration: InputDecoration(
                labelText: nomeCampo, // Nome do campo
                labelStyle:
                    TextStyle(color: Colors.grey.shade300, fontSize: 18),

                // Borda do Input
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),

                // Borda do Input selecionado
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)))));
  }
}
