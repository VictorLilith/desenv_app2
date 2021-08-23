import 'package:flutter/material.dart';
import 'package:readercon/View/recursos/barraSuperior.dart';
import 'package:readercon/View/recursos/menu.dart';

class ReadOp extends StatefulWidget {
  @override
  State createState() => new ReadOpState();
}

class ReadOpState extends State<ReadOp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff00D1FF),
        appBar: new BarraSuperior(),
        drawer: new MenuDrawer(),
        body: SingleChildScrollView(
            child: Column(children: [
          new Container(
            decoration: new BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/wallpaperjfif.jfif"),
                    fit: BoxFit.cover)),
            margin: EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            padding: new EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Column(
                  children: [
                    new Image.asset(
                      "img/00.jpg",
                      height: 635,
                    ),
                    new Image.asset(
                      "img/img_or2008210732_0002.jpg.webp",
                      height: 635,
                    ),
                    new Image.asset(
                      "img/02.jpg",
                      height: 635,
                    ),
                    new Image.asset(
                      "img/03.jpg",
                      height: 635,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ])));
  }
}
