void main() {
  print('Init main');

  Future<String>.sync(() {
    print('Função Future executada');
    return 'Resultado Future';
  }).then(print);

  print('Fim Main');
}