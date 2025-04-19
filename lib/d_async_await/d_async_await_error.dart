
Future<void> main() async {
  print('inicio');
  try {
  final id = await buscarId();
  final nome = await buscarNome(id);
  print('O nome é $nome');
  print('fim');
  } catch (e) {
    print('Aconteceu um problema!!!');
  }
}


Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async {
  throw Exception();
  // return 'Gustavo Dias ($id)';
}