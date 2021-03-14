void main() {
  // ! errado
  String NomeCompleto = 'Percy Heleno';

  // * correcto
  String nomeCompleto = 'Percy heleno';

  // !errado
  var nome;

  // * correcto
  dynamic nome;

  List<String> listConvidados = List();
  listConvidados[0] = 'Jose';
  listConvidados[1] = 'Maria';
  listConvidados[2] = 'Joao';
}
