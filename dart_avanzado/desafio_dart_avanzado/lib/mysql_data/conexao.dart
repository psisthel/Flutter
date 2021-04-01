import 'package:mysql1/mysql1.dart';

Future<MySqlConnection> getConnection() async {
  var conn = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: 'root',
      db: 'curso_dart_flutter');
  return await MySqlConnection.connect(conn);
}
