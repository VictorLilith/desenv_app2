import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readercon/View/cadastro.dart';
import 'package:readercon/View/login.dart';
import 'package:readercon/View/perfil.dart';
import 'package:readercon/View/suporte.dart';

import '../home.dart';

class MenuDrawer extends StatelessWidget {
  final String usuario = "Ange";
  final String email = "angeyui@hotmail.com";
  final String fotoPerfil = "img/perfil6.jpg";

  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: TextStyle(fontSize: 18),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(usuario),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              radius: 16,
              child: ClipRRect(
                child: Image.asset(fotoPerfil),
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
          ListTile(
            title: mostrarTitulo("Home"),
            subtitle: Text("Pagina Inicial"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(
              FontAwesomeIcons.home,
              size: 28,
              color: Colors.orange[300],
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
              title: mostrarTitulo("Perfil"),
              subtitle: Text("Exibir Perfil"),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
              leading: FaIcon(
                FontAwesomeIcons.idCard,
                size: 28,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Perfil()));
              }),
          ListTile(
              title: mostrarTitulo("Suporte"),
              subtitle: Text("Relate problemas"),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
              leading: FaIcon(
                FontAwesomeIcons.questionCircle,
                size: 28,
                color: Colors.teal,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Suporte()));
              }),
          ListTile(
              title: mostrarTitulo("Logout"),
              subtitle: Text("Sair do Sistema"),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
              leading: FaIcon(
                FontAwesomeIcons.signOutAlt,
                size: 28,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              })
        ],
      ),
    );
  }
}
