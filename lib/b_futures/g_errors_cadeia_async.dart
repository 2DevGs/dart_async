
void main() {

  func1()
    .then((value) => func2())
    .then((value) => func3(), onError: (error) {
      print('Tratando erro da func2');
      return func3();
      })
    .then(print)
    .catchError((error) => print('Erro em alguma das chamadas'));

}


  Future<String> func1() {
    print('func1');
    return Future.value('Fazendo Func1');
  }

  Future<String> func2() {
    print('func2');
    // throw Exception();
    return Future.error('Fazendo func2');
  }

  Future<String> func3() {
    print('func3');
    return Future.value('Fazendo Func3');
  }