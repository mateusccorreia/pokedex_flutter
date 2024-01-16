import 'package:flutter/material.dart';
import 'package:pokedex_flutter/commons/models/pokemon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.pokemonList});
  final List<PokemonModel> pokemonList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: pokemonList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [Text(pokemonList[index].name)],
                      )
                    ],
                  )),
            );
          }),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key, required this.pokemonList});
//   final List<PokemonModel?> pokemonList;
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final pokemon = getPokemon();
//
//   @override
//   void initState() {
//     super.initState();
//
//     pokemon.getPokemon();
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Pokedex Flutter'),
//       ),
//       backgroundColor: Colors.redAccent,
//       body: ListView.builder(
//           itemCount: pokemon.getPokemon().,
//           itemBuilder: (context, index) {
//             return Card(
//               child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [Text(pokemonList.id)],
//                       )
//                     ],
//
//                   )),
//             );
//           }),
//     );
//   }
// }
