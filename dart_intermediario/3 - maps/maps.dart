void main() {
  Map<String, String> paciente = Map();

  paciente.putIfAbsent('nome', () => 'Percy');
  paciente.putIfAbsent('idade', () => '48 anos');
  print(paciente);
  paciente.update('idade', (idade) => '50 anos');
  paciente.update('sexo', (sexo) => 'Masculino',
      ifAbsent: () => 'masculino Adicionado');
  print(paciente);

  print('O nome do paciente e: ${paciente['nome']}');
  print('Tem: ${paciente['idade']}');
  print('e do sexo ${paciente['sexo']}');

  paciente.forEach((chave, valor) => print('Chave: $chave, Valor: $valor'));

  for (var chave in paciente.keys) {
    print(chave);
  }

  for (var value in paciente.values) {
    print(value);
  }

  var novoPaciente = paciente.map((chave, valor) {
    return MapEntry(chave, valor.toUpperCase());
  });
  print(novoPaciente);

  // nova manera de criar maps
  var mapa2 = Map<String, String>.from({'nome': 'Percy'});
  print(mapa2);

  var mapa3 = {'nome': 'heleno'};
  print(mapa3);

  var mapa4 = {'sexo': 'masculino'};
  print(mapa4);

  mapa4.addAll(mapa3);
  print(mapa4);

  var mapa5 = {
    'sexo': 'masculino',
    'dados': {'valor1': 1, 'valor2': 2}
  };
  print(mapa5);
  var dados = mapa5['dados'] as Map;
  print(dados['valor1']);
}
