import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
  final String texto;
  final Function() funcao;
  const BotaoWidget({super.key, required this.texto, required this.funcao});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: funcao,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 20
          ),
        child: Text(texto, style: const TextStyle(fontSize: 20)),
      ),
    ); 
  }
}