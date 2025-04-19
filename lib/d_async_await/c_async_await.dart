
Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async => 'Gustavo Dias ($id)';

Future<String> buscarNomeUsuario() {
  return buscarId().then((id){
    return buscarNome(id).then((nome) {
      return 'Usuário: $nome';
    });
  });
}

  Future<String> buscarNomeUsuarioAwait() async {
    final id = await buscarId();
    final nome = await buscarNome(id);
    return 'Usuário: $nome';
  }

  Future<void> main() async {
    print("inicio");
    final nomeUsuario = await buscarNomeUsuarioAwait();
    print(nomeUsuario);
    buscarNomeUsuario().then(print);
    print('fim');


  }