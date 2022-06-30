import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

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
            Text(perguntas[0]),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Resposta 1'),
              onPressed: () => print('Resposta 1'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Resposta 2'),
              onPressed: () => print('Resposta 2'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Resposta 3'),
              onPressed: () => print('Resposta 3'),
            )
          ],
        ),
      ),
    );
  }
}
