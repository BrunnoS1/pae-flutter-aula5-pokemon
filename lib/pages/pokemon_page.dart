import 'package:flutter/material.dart';
import 'package:pae_encontro5/widgets/botao_widget.dart';

class PokemonPage extends StatelessWidget {
  final String nome;
  final String tipo;
  final String url;
  final String urlimg;
  const PokemonPage({super.key, required this.nome, required this.tipo, required this.url, required this.urlimg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Navegação + Pacotes + API", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(urlimg),
          Padding(
            padding: const EdgeInsets.only(left:50, right:50),
            child: Text("Nome: $nome\n\nTipo: $tipo\n\nURL: $url", style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 50
          ),
          Center(
            child: BotaoWidget(
              texto: "Voltar", 
              funcao: () {
              Navigator.pop(context);
              }
            ),
          )
        ],
      )  
    );
  }
}