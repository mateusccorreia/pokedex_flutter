import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:pokedex_flutter/commons/models/pokemon.dart';
import 'package:pokedex_flutter/commons/repositories/constants.dart';

class ApiService {
  Future<PokemonModel?> getPokemon() async {
    try {
      var url = Uri.parse(ApiConstants.allPokemonUrl);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return pokemonModelFromJson(response.body);
      } else {
        log('HTTP request failed with status: ${response.statusCode}');
        log('Response body: ${response.body}');
        throw Exception('Failed to load data: ${response.reasonPhrase}');
      }
    } catch (e) {
      log('Exception during API request: $e');
    }
  }
}
