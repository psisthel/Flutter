import 'package:desafio_dart_avanzado/incluir_cidades.dart';
import 'package:desafio_dart_avanzado/incluir_ufs.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> run() async {
  var url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';
  var result = await http.get(url);

  if (result.statusCode == 200) {
    var response = convert.jsonDecode(result.body);

    for (var estados in response) {
      int id_uf = estados['id'];
      String sigla_uf = estados['sigla'];
      String nome_uf = estados['nome'];

      await incluiirUfs(id_uf, sigla_uf, nome_uf);

      print('Registrando cidades do UF ${id_uf}');
      await incluirCidades(id_uf);
    }
  }
}
