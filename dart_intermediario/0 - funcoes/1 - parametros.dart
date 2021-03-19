void main() {
  print('O resultado e ${soma(10, 30)}');
  print(somaNomeada(numero1: 30, numero2: 50));
  print(somaNomeadaDefault(numero1: 30));

  imprimir('Joao Doria');
  imprimir('Joao Doria', 78);
}

int soma(int numero1, int numero2) {
  return numero1 + numero2;
}

int somaNomeada({int numero1, int numero2}) {
  return numero1 + numero2;
}

int somaNomeadaDefault({int numero1 = 0, int numero2 = 100}) {
  return numero1 + numero2;
}

void imprimir(String nome, [int idade]) {
  print(
      'O nome do paciente e $nome ${idade != null ? 'e tem $idade anos' : ''}');
}
