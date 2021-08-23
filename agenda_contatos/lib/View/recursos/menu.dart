import 'package:agenda_contatos/View/busca.dart';
import 'package:agenda_contatos/View/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer extends StatelessWidget {
  final String usuario = "Teste";
  final String email = "teste@hotmail.com";
  final String fotoPerfil = "img/Nemopero.jpg";

  Text mostrarTitulo(String texto) {
    return Text(
      texto,
      style: TextStyle(fontSize: 18),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(usuario),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                child: Image.asset(fotoPerfil),
                borderRadius: BorderRadius.circular(30),
              ),
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
              title: mostrarTitulo("Contatos"),
              subtitle: Text("Gerenciar Contatos"),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
              leading: FaIcon(
                FontAwesomeIcons.userFriends,
                size: 28,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Busca()));
              }),
          ListTile(
              title: mostrarTitulo("Perfil"),
              subtitle: Text("Editar Informações"),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
              leading: FaIcon(
                FontAwesomeIcons.idCard,
                size: 28,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }),
          ListTile(
              title: mostrarTitulo("Configurações"),
              subtitle: Text("Ajustes no Sistema"),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
              leading: FaIcon(
                FontAwesomeIcons.cogs,
                size: 28,
                color: Colors.teal,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
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
                    context, MaterialPageRoute(builder: (context) => Home()));
              })
        ],
      ),
    );
  }
}
