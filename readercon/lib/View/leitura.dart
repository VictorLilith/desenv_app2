import 'package:flutter/material.dart';
import 'package:readercon/View/recursos/barraSuperior.dart';
import 'package:readercon/View/recursos/menu.dart';

class Read extends StatefulWidget {
  @override
  State createState() => new ReadState();
}

class ReadState extends State<Read> {
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
                      "img/prologo1.jpg",
                      height: 635,
                    ),
                    new Image.asset(
                      "img/prologo2.jpg",
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
