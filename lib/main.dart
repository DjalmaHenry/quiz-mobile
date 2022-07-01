import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var PerguntaSelecionada = 0;

  void responder() {
    setState(() {
      if (PerguntaSelecionada < 2) {
        PerguntaSelecionada++;
      }
    });
    print(PerguntaSelecionada);
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
            Text(perguntas[PerguntaSelecionada]),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Resposta 3'),
              onPressed: responder,
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
