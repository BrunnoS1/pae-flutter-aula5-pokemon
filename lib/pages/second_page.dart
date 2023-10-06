import 'package:flutter/material.dart';
import 'package:pae_encontro5/widgets/botao_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BotaoWidget(texto: "Voltar",
          funcao: () {
            Navigator.pop(context);
          }
        )
      )
    );
  }
}