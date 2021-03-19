import 'dart:collection';

void main() {
  // valore sunicos ordenados y no acepta nulos
  //
  SplayTreeSet<int> numeros = SplayTreeSet<int>();
  numeros.add(5);
  numeros.add(8);
  numeros.add(3);
  numeros.add(11);
  numeros.add(25);
  numeros.add(2);

  print(numeros);
}
