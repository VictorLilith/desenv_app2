import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detail extends StatelessWidget {
  final String foto = "img/bolo_milho.jpg";
  final String nomeReceita = "Bolo de milho cremoso";
  final String tempoPreparo = "40 Minutos";
  final String rendimento = "12 Porções";
  final String numeroFavoritos = "1430";
  final String comentarios = "289";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Image.asset(foto),
        new Container(
          color: Colors.orange[300],
          padding: new EdgeInsets.all(25),
          child: new Column(
            children: [
              new Text(
                nomeReceita,
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),

              // SizedBox(height: 20,),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidClock,
                        color: Colors.white,
                        size: 32,
                      ),
                      new Text(
                        "Preparo",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      new Text(
                        tempoPreparo,
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  new Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.cheese,
                        color: Colors.white,
                        size: 32,
                      ),
                      new Text(
                        "Porções",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      new Text(
                        rendimento,
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  new Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.white,
                        size: 32,
                      ),
                      new Text(
                        "Favoritos",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      new Text(
                        numeroFavoritos,
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  new Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidComment,
                        color: Colors.white,
                        size: 32,
                      ),
                      new Text(
                        "Comentarios",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      new Text(
                        comentarios,
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        new Container(
          child: new Column(
            children: [
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.bookOpen,
                    size: 32,
                    color: Colors.orange[300],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  new Text(
                    "Ingredientes",
                    style: new TextStyle(
                        color: Colors.orange[300],
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              new Container(
                padding: EdgeInsets.all(20),
                child: new Text(
                    "\u2022 4 ovos\n" +
                        "\u2002 1 lata de milho verde\n" +
                        "\u2002 1/2 lata (de milho) de óleo de soja\n" +
                        "\u2002 3 colheres de sopa de coco ralado\n" +
                        "\u2002 2 colheres de sopa de queijo ralado (opcional)\n" +
                        "\u2002 2  xícaras de açúcar\n" +
                        "\u2002 7 colheres de sopa de farinha de milho em flocos\n" +
                        "\u2002 1 colher de fermento em pó\n",
                    style: new TextStyle()),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.bookOpen,
                    size: 32,
                    color: Colors.orange[300],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  new Text(
                    "Modo de preparo",
                    style: new TextStyle(
                        color: Colors.orange[300],
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              new Container(
                padding: EdgeInsets.all(20),
                child: new Text(
                    "\u2002 1. Bata no liquidificador os ovos, o leite e o óleo por 1 minuto.\n" +
                        "\u2002 2. Acrescente o milho e bata por mais uns 2 minutos.\n" +
                        "\u2002 3. Adicione toda parte seca e bata até agregar os ingredientes.\n" +
                        "\u2002 4. Unte uma forma de buraco no meio e leve ao forno preaquecido a 180ºC por 45 minutos.\n",
                    style: new TextStyle()),
              ),
              new SizedBox(
                height: 50,
              )
            ],
          ),
        )
      ],
    );
  }
}
