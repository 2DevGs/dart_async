Future<void> main() async{
  print('Inicio');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.takeWhile((int numero) {
    print('O numero que chegou no takeWhile é $numero');
    return numero <= 10;
  });
  // await for
  await for(var i in stream) {
    print('O numero que chegou no await for é $i');
  }
  print('Fim');
}
int callback(int value) {
  print('O valor é $value');
  return (value +1) * 2;
}