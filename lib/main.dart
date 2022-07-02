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
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Azul', 'Vermelho', 'Verde', 'Preto'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Cachorro', 'Gato', 'Pássaro', 'Peixe'],
      },
      {
        'texto': 'Qual é o seu filme favorito?',
        'respostas': [
          'De volta para o futuro',
          'Harry Potter',
          'Star Wars',
          'Sexta-Feira 13'
        ],
      },
    ];

    List<String> respostas =
        perguntas[_PerguntaSelecionada].cast()['respostas'];

    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_PerguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
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
