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
                  color: Colors.blue[400],
                  size: 32,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            }),
            title: Text(
              "Reader no Conquistador",
              style: TextStyle(fontSize: 28, color: Colors.blue[400]),
            ),
            iconTheme: IconThemeData(color: Colors.white));
}
