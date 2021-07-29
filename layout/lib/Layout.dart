import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
      appBar: new AppBar(
        title: new Text("Layout - Flutter"),
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: Text("Itens do Menu")),
            ListTile(
              title: Text("Raio"),
              subtitle: new Text("Tudo são Widgets"),
              leading: Icon(
                Icons.flash_on,
                color: Colors.yellow,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Pokemon"),
              subtitle: new Text("É facil"),
              leading: Icon(
                Icons.catching_pokemon,
                color: Colors.red,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Musica"),
              subtitle: Text("Teste"),
              leading: Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 28,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: new Center(
          child: ElevatedButton(
        onPressed: () {
          final snackbar = SnackBar(
            content: Text("SnackBar"),
            duration: new Duration(milliseconds: 3000),
            behavior: SnackBarBehavior.floating,
            action: SnackBarAction(
              label: "x",
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        },
        child: Text("Mostrar SnackBar"),
      )),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Configurações"),
          BottomNavigationBarItem(icon: new Icon(Icons.login), label: "Login"),
        ],
      ),
    ));
  }
}
