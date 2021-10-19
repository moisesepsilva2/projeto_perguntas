// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  // ignore: prefer_const_constructors_in_immutables
  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 4) {
      return 'Busque ajuda!';
    } else if (pontuacao < 13) {
      return 'Misericórdia!';
    } else if (pontuacao < 22) {
      return 'Quase lá!';
    } else {
      return 'Parabéns!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text(fraseResultado, style: TextStyle(fontSize: 28))),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          style: TextButton.styleFrom(
              primary: Colors.blue[900], textStyle: TextStyle(fontSize: 20)),
          child: Text('Reiniciar?'),
        )
      ],
    );
  }
}
