import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 13) {
      return 'Você pode melhorar!';
    } else if (pontuacao < 19) {
      return 'Você é bom!';
    } else if (pontuacao < 25) {
      return 'Impressionante!';
    } else {
      return 'Espetacular!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: quandoReiniciarQuestionario,
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
