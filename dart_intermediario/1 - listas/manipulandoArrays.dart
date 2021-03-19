main(List<String> args) {
  var numeros = List.generate(10, (index) => index);

  // !Foreach
  numeros.forEach((numero) => print(numero));

  // !Expand
  var lista = [
    [1, 2],
    [3, 4]
  ];

  var novaLista = lista.expand((numero) => numero);

  print(lista);
  print(novaLista);
  novaLista.forEach((l) => print(l));

  // !map
  List<int> lista2 = [1, 2, 3];
  List<String> novaListaString = lista2.map((e) => '$e - Percy').toList();
  print(lista2);
  print(novaListaString);

  // !any
  List<String> listaBusca = ['Rodrigo', 'Joao', 'Joaquim'];

  if (listaBusca.any((nome) => nome == 'Joao')) {
    print('tem joao');
  }

  // !every
  if (listaBusca.every((nome) => nome.contains('J'))) {
    print('todos tem a letra J');
  } else {
    print('nem todos tem a letra J');
  }

  // !where
  var nome = listaBusca.where((p) => p == 'Joaquim');
  print(nome);

  // !fold
  var numeroParaSoma = [7, 2, 2];
  var somandoValores =
      numeroParaSoma.fold(0, (atual, elemento) => atual += elemento);

  print(somandoValores);

  // !sort
  var listaParaOrdenacao = [9, 23, 76, 23, 878, 900, 1, 58];
  print(listaParaOrdenacao);
  // listaParaOrdenacao.sort((n1, n2) {
  //   if (n1 < n2) {
  //     return -1;
  //   } else if (n1 == n2) {
  //     return 0;
  //   } else {
  //     return 1;
  //   }
  // });
  listaParaOrdenacao.sort((n1, n2) => n1.compareTo(n2));
  print(listaParaOrdenacao);
}
