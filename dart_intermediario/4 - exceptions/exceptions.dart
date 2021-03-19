void main(List<String> args) {
  try {
    // String nome = null;
    // nome.toLowerCase();
    //int.parse('Percy');

    throw Exception();
  } on FormatException catch (e, s) {
    print('FormatException Generica: $e');
    print('FormatStack Generica: $s');
  } on Exception catch (e, s) {
    print('ExceptionException Generica: $e');
    print('ExceptionExceptionStack Generica: $s');
  } catch (e, s) {
    print('Exception Generica: $e');
    print('Stack Generica: $s');
  } finally {
    print(
        "Executabndo finally - fechando conexao, abrir arquivo texto e fechar");
  }
}
