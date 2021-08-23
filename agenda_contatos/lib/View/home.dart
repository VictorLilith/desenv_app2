import 'package:agenda_contatos/View/busca.dart';
import 'package:agenda_contatos/View/cadastro.dart';
import 'package:agenda_contatos/View/recursos/barraSuperior.dart';
import 'package:agenda_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BarraSuperior(),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            new SizedBox(
              height: 25,
            ),
            Container(
              width: 500,
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  new Text(
                    "Teste testando",
                    style: TextStyle(fontSize: 24, color: Colors.grey[300]),
                  ),
                  new SizedBox(
                    height: 25,
                  ),
                  new Builder(builder: (BuildContext context) {
                    return ElevatedButton(
                      child: Container(
                        width: 300,
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.search,
                              size: 24,
                              color: Colors.white,
                            ),
                            new Text(
                              "Buscar Contatos",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            )
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Busca()));
                      },
                      style:
                          ElevatedButton.styleFrom(primary: Colors.orange[800]),
                    );
                  }),
                  SizedBox(
                    height: 15,
                  ),
                  new Builder(builder: (BuildContext context) {
                    return ElevatedButton(
                      child: Container(
                        width: 300,
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.plus,
                              size: 24,
                              color: Colors.white,
                            ),
                            new Text(
                              "Cadastrar Contato",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            )
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cadastro()));
                      },
                      style:
                          ElevatedButton.styleFrom(primary: Colors.orange[500]),
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
