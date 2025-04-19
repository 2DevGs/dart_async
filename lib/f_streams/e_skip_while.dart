Future<void> main() async{
  print('Inicio');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5).skipWhile((numero) {
    print('Numero que chegou na skipwhile é $numero');
    return numero < 5;
  });
  // await for
  await for(var i in stream) {
    print('O numero que chegou no await for é $i');
  }
  print('Fim');
}
int callback(int value) {
  print('Callback o valor que chegou é $value');
  return (value +1) * 2;
}