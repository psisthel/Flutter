import 'mysql_data/conexao.dart' as conexao;

Future<void> incluiirUfs(int id_uf, String uf, String nome_uf) async {
  var estados = await conexao.getConnection();
  await estados.query(
      'insert estados (id, uf, nome) values (?, ?,?)', [id_uf, uf, nome_uf]);

  await estados.close();
}
