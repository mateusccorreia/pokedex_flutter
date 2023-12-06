import 'package:flutter/material.dart';
import 'package:pokedex_flutter/commons/models/pokemon.dart';
import 'package:pokedex_flutter/commons/repositories/api_service.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.pokemonList});
  final List<PokemonModel?> pokemonList;
  final pokemon = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex Flutter'),
      ),
      backgroundColor: Colors.redAccent,
      body: ListView.builder(
          itemCount: pokemonList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [Text(pokemonList.name)],
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
