import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:pokedex_flutter/commons/models/pokemon.dart';
import 'package:pokedex_flutter/commons/repositories/constants.dart';

abstract class IPokemonRepository {
  Future<List<PokemonModel>?> getPokemon();
}

class PokemonRepository implements IPokemonRepository {
  final Dio dio;
  PokemonRepository({required this.dio})

  @override
  Future<List<PokemonModel>?> getPokemon() async {
    try {
      var url = ApiConstants.allPokemonUrl;
      final response = await dio.get(url);
      final json = jsonDecode(response.data) as Map<String, dynamic>;

      if (response.statusCode == 200) {
        // return pokemonModelFromJson(response.data);
        // final json = jsonDecode(response.data);
      } else {
        log('HTTP request failed with status: ${response.statusCode}');
        log('Response body: ${response.data}');
        throw Exception('Failed to load data: ${response.statusMessage}');
      }
    } catch (e) {
      log('Exception during API request: $e');
    }
  }
}
