void main(List<String> args) {
  Function mensagem = (String msg) {
    print(msg);
  };

  mensagem('Ola Mundo');

  var soma20 = Soma(29);
  print(soma20(100));

  print(SomaComFuncao(10, getNumero2));
}

int getNumero2() {
  return 2;
}

Function Soma(int numero1) {
  return (int numero2) {
    return numero1 + numero2;
  };
}

int SomaComFuncao(int numero, Function pegaNumero2) {
  return numero + pegaNumero2();
}
