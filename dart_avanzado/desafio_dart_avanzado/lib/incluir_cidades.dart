import 'mysql_data/conexao.dart' as conexao;
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<void> incluirCidades(int id_uf) async {
  var url_citys =
      'https://servicodados.ibge.gov.br/api/v1/localidades/estados/${id_uf}/distritos';
  var res_citys = await http.get(url_citys);

  if (res_citys.statusCode == 200) {
    var response_city = convert.jsonDecode(res_citys.body);
    var conn_city = await conexao.getConnection();

    for (var cidades in response_city) {
      int id_city = cidades['id'];
      String nome_city = cidades['nome'];

      await conn_city.query(
          'insert into cidades (id, nome, id_uf) values (?, ?,?)',
          [id_city, nome_city, id_uf]);
    }
    await conn_city.close();
  } else {
    print(res_citys.statusCode);
  }
}
