import 'package:flutter/material.dart';

import 'Layout.dart';

void main() => runApp(MeuLayout());

class MeuLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Layout Basico",
        home: Scaffold(
          body: Layout(),
        ));
  }
}
