import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _PerguntaSelecionada = 0;

  void _responder() {
    setState(() {
      if (_PerguntaSelecionada < 2) {
        _PerguntaSelecionada++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu filme favorito?'
    ];

    return MaterialApp(
      title: 'Pergunta App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergunta App'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_PerguntaSelecionada]),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
