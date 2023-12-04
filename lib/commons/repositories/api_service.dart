import 'package:http/http.dart' as http;
import 'package:pokedex_flutter/commons/models/pokemon.dart';
import 'package:pokedex_flutter/commons/repositories/constants.dart';

class ApiService {
  Future<List<Pokemon>?> getPokemon() async {
    try {
      var url = Uri.parse(ApiConstants.allPokemonUrl);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return
      }
    }
  }
}
