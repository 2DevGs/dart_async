Future<void> main() async { 

  print('Inicio');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(10);
  stream.listen((numero) {
    print('Listen value : $numero');
  });


  print('Fim');
}

int callback(int value) {
  print('Callback o valor que chegou é $value');
  return (value +1) * 2;
}