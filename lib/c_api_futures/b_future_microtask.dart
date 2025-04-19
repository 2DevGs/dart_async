void main() {
  print('init main');

  Future<String>(() => 'Future Normal').then(print);
  Future<String>.microtask(() => Future.error('Erro ao executar'))
    .then(print)
    .catchError(print);

  print('End main');
}