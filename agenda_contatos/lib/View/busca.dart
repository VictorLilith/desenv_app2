import 'package:agenda_contatos/Model/contato.dart';
import 'package:agenda_contatos/Model/contatoService.dart';
import 'package:agenda_contatos/View/cadastro.dart';
import 'package:agenda_contatos/View/perfil.dart';
import 'package:agenda_contatos/View/recursos/barraSuperior.dart';
import 'package:agenda_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Busca extends StatefulWidget {
  @override
  State createState() => new BuscaState();
}

class BuscaState extends State<Busca> {
  ContatoService service = new ContatoService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BarraSuperior(),
      drawer: new MenuDrawer(),
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
        itemCount: service.listarContatos().length,
        itemBuilder: (BuildContext context, int index) {
          Contato contato = service.listarContatos().elementAt(index);

          return Container(
            color: Colors.grey[800],
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      contato.foto,
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover,
                    ),
                  ),
                  new Column(
                    children: [
                      new Text(
                        contato.nome + " " + contato.sobrenome,
                        style: TextStyle(color: Colors.grey[300], fontSize: 24),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      new Text(
                        contato.fone,
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
              trailing: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.grey,
                  size: 32,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new Perfil(id: contato.id)));
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: FaIcon(
            FontAwesomeIcons.plus,
            size: 32,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new Cadastro()));
          }),
    );
  }
}
