void main(List<String> args) {
  // o set permite valores nulos e nao permite valores duplicados
  // e uma lista desordenada

  Set<int> numeros = Set<int>();
  numeros.add(3);
  numeros.add(2);
  numeros.add(1);
  numeros.add(null);
  numeros.add(5);

  print(numeros);

  numeros.forEach((print));

  for (var i = 0; i < numeros.length; i++) {
    print(numeros.elementAt(i));
  }

  print('');

  Set<int> numeros1 = {1, 2, 3, 4, 5, 6};
  Set<int> numeros2 = {1, 3, 4, 7};

  print(numeros1.difference(numeros2));
  print(numeros1.union(numeros2));
  print(numeros1.intersection(numeros2));
  print(numeros1.lookup(5));
}
