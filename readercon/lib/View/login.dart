import 'package:flutter/material.dart';
import 'package:readercon/View/cadastro.dart';
import 'package:readercon/View/home.dart';

class Login extends StatefulWidget {
  @override
  State createState() => new LoginState();
}

class LoginState extends State<Login> {
  final username = TextEditingController();
  final senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      campoInput("Username", username),
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
                                      child: Text("Login",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18))),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.blue[300]),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home()));
                                  });
                            }),

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
                                      primary: Colors.blue.shade600),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cadastro()));
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
                labelStyle: TextStyle(color: Colors.white, fontSize: 18),

                // Borda do Input
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),

                // Borda do Input selecionado
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)))));
  }
}
