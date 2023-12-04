import 'package:flutter/material.dart';
import 'package:pokedex_flutter/commons/models/pokemon.dart';
import 'package:pokedex_flutter/features/home/pages/home_error.dart';
import 'package:pokedex_flutter/features/home/pages/home_loading.dart';
import 'package:pokedex_flutter/features/home/pages/home_page.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});
  // final pokemonList = Future<String>.delayed(
  //   const Duration(seconds: 2),
  //   () => 'Data Loaded',
  // );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
        future: pokemons,
        builder: (BuildContext context, AsyncSnapshot<List<Pokemon>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const HomeLoading();
          }
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            return HomePage(pokemonList: snapshot.data!);
          }
          if (snapshot.hasError) {
            return HomeError(error: snapshot.hasError.toString());
          }

          return Container();
        });
  }
}
