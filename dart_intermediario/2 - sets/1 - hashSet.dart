import 'dart:collection';

void main(List<String> args) {
  Set<int> numeros = {5, 1, 2, 3, 4};
  print(numeros);

  HashSet<String> letrasHash = HashSet<String>();
  letrasHash.add('Rodrigo');
  letrasHash.add('Joaquim');
  letrasHash.add('Leandro');
  print(letrasHash);

  HashSet<int> numerosHash = HashSet<int>();
  numerosHash.add(3);
  numerosHash.add(1);
  numerosHash.add(2);
  print(numerosHash);
}
