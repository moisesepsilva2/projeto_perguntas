// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  final String texto;

  // ignore: use_key_in_widget_constructors
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28, fontFamily: 'San Francisco'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
