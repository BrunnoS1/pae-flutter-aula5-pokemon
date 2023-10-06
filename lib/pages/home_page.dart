import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pae_encontro5/pages/pokemon_page.dart';
import 'package:pae_encontro5/widgets/botao_widget.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Navegação + Pacotes + API", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BotaoWidget(texto: "Buscar pokémon aleatório",
             funcao: (){
              String nome;
              String tipo;
              String urlpoke;
              String urlimg;
              // uma funçao async pra receber dados da api
              () async {
                int numeroPoke = Random().nextInt(1000);
                var urlbase = 'https://pokeapi.co/api/v2/pokemon/';
                // fazer url base pra usar com numero na busca e depois com nome pra exibir
                var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$numeroPoke');
                var response = await http.get(url);
                var decodeResponse = jsonDecode(response.body);
                nome = decodeResponse["name"];
                tipo = decodeResponse["types"][0]["type"]["name"];
                urlimg = decodeResponse["sprites"]["front_default"];
                urlpoke = '$urlbase$nome';
                debugPrint("nome = $nome");
                debugPrint("tipo = $tipo");
                Navigator.push(context, MaterialPageRoute(builder: (context) => PokemonPage(nome: nome, tipo: tipo, url: urlpoke, urlimg: urlimg,)));
              }();
            }),
          ],
        )
      )
    );
  }
}