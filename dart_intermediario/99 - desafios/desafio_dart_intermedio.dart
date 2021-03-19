void main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // 1 - Remover os duplicados
  var pessoasNaoDupli = [];
  var mayoresDe18 = [];
  var linha = [];
  int nMas = 0;
  int nFem = 0;
  var aMaisVelho = [];

  for (var i = 0; i < pessoas.length; i++) {
    if (!pessoasNaoDupli.contains(pessoas[i])) {
      pessoasNaoDupli.add(pessoas[i]);
      linha = pessoas[i].split("|");
      aMaisVelho.add(linha);
      if (linha[2] == 'Masculino') {
        nMas++;
      } else {
        nFem++;
      }
      if (int.parse(linha[1]) > 18) {
        mayoresDe18.add(pessoas[i]);
      }
    }
  }

  print('+++++++++++++++++++++++++++++++++++++++++++++++++++');
  print('Sem Duplicados: ${pessoasNaoDupli}');
  print('+++++++++++++++++++++++++++++++++++++++++++++++++++');

  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  print('Qtde pessoas do sexo Masculino: $nMas');
  print('Qtde pessoas do sexo Femenino: $nFem');
  print('+++++++++++++++++++++++++++++++++++++++++++++++++++');

  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  print('maiores de 18 anos: ${mayoresDe18}');
  print('qtde de maiores de 18 anos: ${mayoresDe18.length}');
  print('+++++++++++++++++++++++++++++++++++++++++++++++++++');

  // 4 - Encontre a pessoa mais velha.
  var maisVelho = aMaisVelho.toList();
  //print(maisVelho);
  //maisVelho.sort((n1, n2) => n1.split('|')[1].compareTo(n2.split('|')[1]));
  maisVelho.sort((n1, n2) => n1[1].compareTo(n2[1]));
  print('A pessoa mais velho(a) é: ${maisVelho.last}');
  print('+++++++++++++++++++++++++++++++++++++++++++++++++++');
}
