import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:pokedex_flutter/error/failure.dart';
import 'package:pokedex_flutter/commons/models/pokemon.dart';
import 'package:pokedex_flutter/commons/repositories/constants.dart';

abstract class IPokemonRepository {
  Future<List<PokemonModel>?> getPokemon();
}

class PokemonRepository implements IPokemonRepository {
  final Dio dio;

  PokemonRepository({required this.dio});
  @override
  Future<List<PokemonModel>?> getPokemon() async {
    try {
      var url = ApiConstants.allPokemonUrl;
      final response = await dio.get(url);
      final json = jsonDecode(response.data) as Map<String, dynamic>;
      final list = json['pokemon'] as List<Map<String, dynamic>>;
      return list.map((e) => PokemonModel.fromJson(e)).toList();
    } catch (e) {
      throw Failure(message: 'Não foi possível carregar os dados');
    }
  }
}
