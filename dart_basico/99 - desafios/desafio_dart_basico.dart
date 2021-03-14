void main() {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  var familias = [];
  var linha = [];
  var paciente = [];
  var qtd = 0;
  var pacientesGeral = [];

  for (var i = 0; i < pacientes.length; i++) {
    linha = pacientes[i].split("|");
    paciente = linha[0].split(" ");
    pacientesGeral.add(linha);

    if (int.parse(linha[1]) > 20) {
      qtd++;
    }

    if (!familias.contains(paciente[1])) {
      familias.add(paciente[1]);
      //print(paciente[1]);
    }
  }

  print('[paciente > 20]---------------------------');
  print('pacientes mayores que 20 = ${qtd}');
  print('------------------------------------------');
  print('');
  print('[Familias]--------------------------------');

  for (var v in familias) {
    print('$v:');
    var pacientesXfamilia = pacientesGeral.where((e) => e[0].contains(v));
    for (var paciente in pacientesXfamilia) {
      print('  ${paciente[0]} ');
      print('  ${paciente[1]} ');
      print('  ${paciente[2]} ');
      print('++++++++++++++++++++++');
    }
  }
}
