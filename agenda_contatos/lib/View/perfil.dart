import 'package:agenda_contatos/Model/contato.dart';
import 'package:agenda_contatos/Model/contatoService.dart';
import 'package:agenda_contatos/View/recursos/barraSuperior.dart';
import 'package:agenda_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Perfil extends StatelessWidget {
  final int id;

  Perfil({required this.id});

  ContatoService service = new ContatoService();

  @override
  Widget build(BuildContext context) {
    Contato contato = service.listarContatos().elementAt(this.id - 1);
    return Scaffold(
      appBar: new BarraSuperior(),
      drawer: new MenuDrawer(),
      body: new Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Image.asset(
                  contato.foto,
                  height: 350,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Text(contato.nome + " " + contato.sobrenome,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: 3,
                      wordSpacing: 3,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Text(
                  contato.fone,
                  style: TextStyle(color: Colors.grey[400], fontSize: 18),
                ),
                new Text(
                  contato.email,
                  style: TextStyle(color: Colors.grey[400], fontSize: 18),
                )
              ],
            ),
            new Container(
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: Divider(
                height: 5,
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.phoneAlt,
                      color: Colors.orange[400],
                      size: 28,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    new Text(
                      "Ligar",
                      style: TextStyle(color: Colors.orange[400], fontSize: 18),
                    )
                  ],
                ),
                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.solidComments,
                      color: Colors.orange[400],
                      size: 28,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    new Text(
                      "Mensagem",
                      style: TextStyle(color: Colors.orange[400], fontSize: 18),
                    )
                  ],
                ),
                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.video,
                      color: Colors.orange[400],
                      size: 28,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    new Text(
                      "Video Chamada",
                      style: TextStyle(color: Colors.orange[400], fontSize: 18),
                    )
                  ],
                ),
                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.envelope,
                      color: Colors.orange[400],
                      size: 28,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    new Text(
                      "Email",
                      style: TextStyle(color: Colors.orange[400], fontSize: 18),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.pen),
        onPressed: () {},
      ),
    );
  }
}
