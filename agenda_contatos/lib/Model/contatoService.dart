import 'package:agenda_contatos/Model/contato.dart';

class ContatoService {
  List<Contato> contatos = [];
  void cadastrarContato(Contato contato) {
    contatos.add(contato);
  }

  List listarContatos() {
     contatos = [
      Contato(
          id: 1,
          nome: "Nagi",
          sobrenome: "Nemoto",
          email: "nemo@hotmail.com",
          fone: "(51)9999-7777",
          foto: "img/nemo.jpg"),
      Contato(
          id: 2,
          nome: "Karin",
          sobrenome: "Matoba",
          email: "karin@hotmail.com",
          fone: "(51)9988-7777",
          foto: "img/matoba.jpg"),
      Contato(
          id: 3,
          nome: "Marina",
          sobrenome: "Kumamoto",
          email: "marin@hotmail.com",
          fone: "(51)9998-7777",
          foto: "img/marin.jpg"),
      Contato(
          id: 4,
          nome: "Ao",
          sobrenome: "Yamato",
          email: "ao@hotmail.com",
          fone: "(51)9899-7777",
          foto: "img/ao.jpg")
    ];

    return contatos;
  }
}
