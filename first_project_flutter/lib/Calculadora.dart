import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Calculadora - v1.0"),
        ),
        body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Resultado: $resultado",
                  style: new TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration:
                      new InputDecoration(hintText: "Informe o valor 1"),
                  controller: campoValor1,
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration:
                      new InputDecoration(hintText: "Informe o valor 2"),
                  controller: campoValor2,
                ),
                new Padding(padding: const EdgeInsets.only(top: 20)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text(
                        "+",
                        style: new TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      color: Colors.redAccent,
                      onPressed: somar,
                    ),
                    new MaterialButton(
                        child: new Text(
                          "-",
                          style: new TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.redAccent,
                        onPressed: subtrair),
                    new MaterialButton(
                        child: new Text(
                          "x",
                          style: new TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.redAccent,
                        onPressed: multiplicar),
                    new MaterialButton(
                        child: new Text(
                          "/",
                          style: new TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.redAccent,
                        onPressed: divisao)
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                        child: new Text(
                          "Limpar",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.redAccent,
                        onPressed: limpar)
                  ],
                )
              ]),
        ));
  }

  var valor1;
  var valor2;
  var resultado = 0;

  TextEditingController campoValor1 = new TextEditingController(text: "");
  TextEditingController campoValor2 = new TextEditingController(text: "");

  void somar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 + valor2;
    });
  }

  void subtrair() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 - valor2;
    });
  }

  void multiplicar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 * valor2;
    });
  }

  void divisao() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 / valor2;
    });
  }

  void limpar() {
    setState(() {
      resultado = 0;
      campoValor1.text = "";
      campoValor2.text = "";
    });
  }
}
