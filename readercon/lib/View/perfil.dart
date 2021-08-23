import 'package:flutter/material.dart';
import 'package:readercon/View/recursos/barraSuperior.dart';
import 'package:readercon/View/recursos/menu.dart';

class Perfil extends StatelessWidget {
  final String usuario = "Ange";
  final String email = "angeyui@hotmail.com";
  final String fotoPerfil = "img/perfil6.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BarraSuperior(),
      drawer: new MenuDrawer(),
      body: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/wallpaperjfif.jfif"), fit: BoxFit.cover),
        ),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Image.asset(
                    "img/perfil3.jpg",
                    height: 260,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text(
                  usuario,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text(
                  email,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
