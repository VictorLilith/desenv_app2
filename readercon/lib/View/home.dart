import 'package:flutter/material.dart';
import 'package:readercon/View/leitura.dart';
import 'package:readercon/View/leituraop.dart';
import 'package:readercon/View/recursos/barraSuperior.dart';
import 'package:readercon/View/recursos/menu.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new BarraSuperior(),
        drawer: MenuDrawer(),
        body: SingleChildScrollView(
            child: Column(children: [
          new SizedBox(
            height: 25,
          ),
          new Text(
            "Populares",
            style: TextStyle(
                fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          new Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/wallpaperjfif.jfif"),
                    fit: BoxFit.cover),
                border: Border.all()),
            width: 450,
            child: Column(
              children: [
                new Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.topCenter,
                  padding: new EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Column(
                          children: [new Image.asset("img/capaop.jfif")],
                        ),
                        new Column(
                          children: [
                            new Text(
                              "One Piece",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5)),
                            new Text(
                              "One Piece começa quando Gol D. Roger, o \nRei Dos Piratas que possuiu tudo \nnesse mundo, antes de ser \nexecutado, diz que escondeu o \nseu tesouro em algum lugar da\n Grand Line, um oceano extremamente \nperigoso. Desde então muitos piratas\n se aventuram pela Grand Line para \ntentar encontrar o tesouro\n chamado One Piece.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                            new SizedBox(
                              height: 20,
                            ),
                            new Builder(builder: (BuildContext context) {
                              return ElevatedButton(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                  child: Text(
                                    "Cap 1021",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue[300]),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ReadOp()));
                                },
                              );
                            }),
                          ],
                        ),
                        new SizedBox(
                          height: 25,
                        ),
                      ]),
                )
              ],
            ),
          ),
          new SizedBox(height: 25),
          new Text(
            "Atualizados Recentemente",
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          new Divider(
            height: 20,
            color: Colors.black,
          ),
          new Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/wallpaperjfif.jfif"),
                      fit: BoxFit.cover),
                  border: Border.all()),
              width: 1000,
              child: Column(children: [
                new Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.topCenter,
                  padding: new EdgeInsets.fromLTRB(25, 25, 25, 25),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Column(
                          children: [
                            new Image.asset(
                              "img/DAL_v01_cover.jpg",
                              height: 280,
                            )
                          ],
                        ),
                        new Column(
                          children: [
                            new Text(
                              "Date A Live",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5)),
                            new Text(
                              "Na história, um garoto chamado\n Itsuka Shidou conhece uma garota espírito\n que tem sido rejeitada por um mundo\n devastado. A menina, que Shidou \nnomeou de Tohka, é culpada de ter dizimado\n  grandeparte da humanidade há 30 anos,\n e agora ela está de volta.\n A única maneira de detê-la é\n namorá-la.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                            new SizedBox(
                              height: 20,
                            ),
                            new Builder(builder: (BuildContext context) {
                              return ElevatedButton(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                  child: Text(
                                    "Vol. 1",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue[300]),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Read()));
                                },
                              );
                            }),
                          ],
                        ),
                        new SizedBox(
                          height: 25,
                        ),
                      ]),
                ),
                new Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.topCenter,
                  padding: new EdgeInsets.fromLTRB(25, 25, 25, 25),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Column(
                          children: [
                            new Image.asset(
                              "img/indexgt.jpg",
                              height: 280,
                            )
                          ],
                        ),
                        new Column(
                          children: [
                            new Text(
                              "Toaru Majutsu no Index:\nGenesis Testament",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5)),
                            new Text(
                              "A série Toaru Majutsu no Index se passa \nna Cidade Acadêmica, uma cidade \nescola tecnologicamente avançada \nlocalizada na parte oeste de Tóquio \nonde estudantes conhecidos \ncientificamente como Espers desenvolvem  \npoderessuper-humanos.\n Entretanto, dentro deste mundo onde\n habilidades sobrenaturais são comuns, existe\n um mundo de magia e ocultismo conectado\n às instituições religiosas de todo o\n mundo.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                            new SizedBox(
                              height: 20,
                            ),
                            new Builder(builder: (BuildContext context) {
                              return ElevatedButton(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                  child: Text(
                                    "Vol. 1",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue[300]),
                                onPressed: () {},
                              );
                            }),
                          ],
                        ),
                        new SizedBox(
                          height: 25,
                        ),
                      ]),
                )
              ]))
        ])));
  }
}
