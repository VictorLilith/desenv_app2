import 'package:flutter/material.dart';
import 'package:food_app/Detail.dart';

class Delicious extends StatefulWidget {
  @override
  State createState() => new DeliciousState();
}

class DeliciousState extends State<Delicious> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "Delicious",
        ),
        backgroundColor: Colors.orange.shade300,
        leadingWidth: 45,
        leading: Transform.translate(
          offset: Offset(5, 0),
          child: Image.asset("img/chef.png"),
        ),
      ),
      endDrawer: new Drawer(
        child: new ListView(
          children: [
            // Item 1
            new ListTile(
              title: new Text("Flutter"),
              subtitle: new Text("Tudo são Widgets"),
              leading: new Icon(
                Icons.flash_on,
                color: Colors.red.shade400,
                size: 32,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: new Text("Dart"),
              subtitle: new Text("É muito forte"),
              leading: new Icon(
                Icons.mood,
                color: Colors.amber.shade700,
                size: 32,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            ),

            // Item 3
            ListTile(
              title: new Text("Cafessíneo"),
              subtitle: new Text("Quero cafééé"),
              leading: new Icon(
                Icons.coffee,
                color: Colors.brown,
                size: 32,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: new Detail(),
      ),
      // bottomNavigationBar: ,
    );
  }
}
