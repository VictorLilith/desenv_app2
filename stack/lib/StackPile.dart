import 'package:flutter/material.dart';

class StackPile extends StatefulWidget {
  @override
  State createState() => new StackPileState();
}

class StackPileState extends State<StackPile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: new AppBar(
        title: new Text("Stack - Pile"),
      ),
      drawer: new Drawer(),
      body: new Stack(
        children: [
          new Container(
            child: new Text(
              "Stack 1",
              style: new TextStyle(fontSize: 32),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: 350,
            height: 400,
            color: Colors.blueAccent,
          ),
          new Container(
            child: new Text(
              "Stack 2",
              style: new TextStyle(fontSize: 32),
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            width: 250,
            height: 300,
            color: Colors.green,
          ),
          new Container(
            child: new Text(
              "Stack 3",
              style: new TextStyle(fontSize: 32),
            ),
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(30),
            width: 150,
            height: 200,
            color: Colors.purple,
          )
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
        BottomNavigationBarItem(label: "Home", icon: new Icon(Icons.home)),
        BottomNavigationBarItem(label: "Sair", icon: new Icon(Icons.logout))
      ]),
    ));
  }
}
