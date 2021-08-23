import 'package:flutter/material.dart';
import 'package:readercon/View/home.dart';
import 'package:readercon/View/login.dart';
import 'package:readercon/View/recursos/estilo.dart';

void main() => runApp(new MaterialApp(
      title: "Reader no Conquistador",
      home: new Login(),
      debugShowCheckedModeBanner: false,
      theme: estilo(),
    ));
