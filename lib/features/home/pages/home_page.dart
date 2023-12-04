import 'package:flutter/material.dart';
import 'package:pokedex_flutter/commons/models/pokemon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.pokemonList});
  final List<Pokemon> pokemonList;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
