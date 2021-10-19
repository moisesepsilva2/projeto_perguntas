import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textoResposta;
  final void Function() quandoSelecionado;

  Resposta(this.textoResposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(textoResposta),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
