import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());


class MarimbaApp extends StatelessWidget {
  void tocarSom(int numeroDoSom){
    final player = AudioCache();
    player.play('nota$numeroDoSom.wav');
  }


  Expanded criarBotao({Color cor, int numeroDoSom}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: cor),
        onPressed: () {
          tocarSom(numeroDoSom);
        },
        child: null,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              criarBotao(cor: Colors.deepPurple, numeroDoSom: 1),
              criarBotao(cor: Colors.red, numeroDoSom: 2),
              criarBotao(cor: Colors.blue, numeroDoSom: 3),
              criarBotao(cor: Colors.green, numeroDoSom: 4),
              criarBotao(cor: Colors.yellow, numeroDoSom: 5),
              criarBotao(cor: Colors.orange, numeroDoSom: 6),
              criarBotao(cor: Colors.pinkAccent, numeroDoSom: 7),

            ],
          ),
        ),
      ),
    );
  }
}
