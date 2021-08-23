import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraSuperior extends AppBar {
  BarraSuperior()
      : super(
            automaticallyImplyLeading: false,
            centerTitle: true,
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.bars,
                  color: Colors.orange[300],
                  size: 32,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            }),
            title: Text(
              "Agenda de Contatos",
              style: TextStyle(fontSize: 28, color: Colors.orange[300]),
            ),
            iconTheme: IconThemeData(color: Colors.black));
}
