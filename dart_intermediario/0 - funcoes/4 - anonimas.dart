void main(List<String> args) {
  consultarAlgumaCoisa((String nomePaciente) {
    print(nomePaciente);
  });
  print('final');
}

void consultarAlgumaCoisa(Function callback) {
  print('executando consultarAlgumaCoisa');
  print('');
  String nomePaciente = 'Percy heleno';
  callback(nomePaciente);
}
