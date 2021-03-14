void main() {
  // exercicio #1
  print('');
  print('[ exercicio #1 ]----------------------------------------------');
  var v1 =
      "Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon";

  print(v1.length);

  // exercicio #2
  print('');
  print('[ exercicio #2 ]----------------------------------------------');
  List anomes = [
    'Percy Heleno',
    'Jose Alberto',
    'Marcos Quintana',
    'Rafaela Landin',
    'Renato Arias',
    'Jorge Antonio',
    'Luis Francisco',
    'Magda Rocha',
    'Mauricion Fernando',
    'Roberto Beda'
  ];

  for (var i = 0; i < anomes.length; i++) {
    var nome = anomes[i];
    print('Seja benvindo: ' + nome);
  }

  // exercicio #3
  print('');
  print('[ exercicio #3 ]----------------------------------------------');
  var v2 =
      'Pedro de Alcântara#Francisco Antônio#João Carlos#Xavier de Paula#Miguel Rafael#Joaquim José Gonzaga#Pascoal Cipriano Serafim de Bragança e Bourbon';

  var anomes1 = v2.split('#');

  for (var i = 0; i < anomes1.length; i++) {
    print(anomes1[i]);
  }

  // exercicio #4
  print('');
  print('[ exercicio #4 ]----------------------------------------------');
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  for (var i = 0; i < paciente.length; i++) {
    var vlin = paciente[i];
    var nome2 = vlin.split("|");
    print('nombre: ' + nome2[0] + ' - idade: ' + nome2[1]);
  }

  // exercicio #5
  print('');
  print('[ exercicio #5 ]----------------------------------------------');
  List paciente2 = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  paciente2.removeRange(3, 5);
  for (var i = 0; i < paciente2.length; i++) {
    var vlin = paciente2[i];
    var nome3 = vlin.split("|");
    print('nombre: ' + nome3[0] + ' - idade: ' + nome3[1]);
  }

  // exercicio #6
  print('');
  print('[ exercicio #6 ]----------------------------------------------');
  List paciente3 = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|17',
    'Joaquin Rahman|28',
    'Luan Rahman|23',
  ];

  paciente3.removeAt(1);
  paciente3.removeAt(1);

  // pode ser feito com 2 for tambem!
  for (var i = 0; i < paciente3.length; i++) {
    var vlin = paciente3[i];
    var nome3 = vlin.split("|");
    print('nombre: ' + nome3[0] + ' - idade: ' + nome3[1]);
  }
}
