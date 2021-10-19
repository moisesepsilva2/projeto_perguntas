// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _pontuacaoTotal = 0;
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual o sobrenome do empresário dono do SBT? Silvio...',
      'respostas': [
        {'texto': 'Flamengo', 'pontuacao': 1},
        {'texto': 'Palmeiras', 'pontuacao': 1},
        {'texto': 'Santos', 'pontuacao': 10},
        {'texto': 'Grêmio', 'pontuacao': 1},
      ]
    },
    {
      'texto':
          'Fundador da Rede Globo, falecido aos 98 anos em 2003. Roberto...',
      'respostas': [
        {'texto': 'Terrestre', 'pontuacao': 1},
        {'texto': 'Aéreo', 'pontuacao': 1},
        {'texto': 'Lunar', 'pontuacao': 1},
        {'texto': 'Marinho', 'pontuacao': 10},
      ]
    },
    {
      'texto': 'Ex-vocalista do grupo Só Pra Contrariar. Alexandre...',
      'respostas': [
        {'texto': 'Refratário', 'pontuacao': 1},
        {'texto': 'Píres', 'pontuacao': 5},
        {'texto': 'Garfo', "pontuacao": 10},
        {'texto': 'Prato de sopa', 'pontuacao': 8},
      ]
    }
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Show do Burrão'),
      ),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              quandoResponder: _responder,
            )
          : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
