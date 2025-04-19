
void main() {

  final nome = metodoAssincronoSemAsync();
  final nome2 = metodoAssincrono();
  print(nome2);

  nome.then(print).catchError(print);

  metodoAssincronoVoid().whenComplete(() => print('Finalizando o void!'));

}

  Future<String> metodoAssincronoSemAsync() {
    return Future.value('Gustavo Dias');
  }

  Future<String> metodoAssincrono() async {
    return ('Gustavo Serrano');
  }

  Future<void> metodoAssincronoVoid() async {

  }