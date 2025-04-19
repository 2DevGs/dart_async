
void main(){
  print('Init main');
    var f1 = Future.delayed(Duration(seconds: 1), () => 'F1');
    var f2 = Future.delayed(Duration(seconds: 1), () => 'F2');
    var f3 = Future.delayed(Duration(seconds: 3), () => 'F3');
    var f4 = Future.delayed(Duration(seconds: 1), () => 'F4');
    var f5 = Future.delayed(Duration(seconds: 1), () => Future.error('Erro na execução!'));

  print(DateTime.now().toIso8601String());
  Future.wait([f1,f2,f3,f4,f5])
  .then((arrayValues){
    print(DateTime.now().toIso8601String());
    print(arrayValues);
    print(arrayValues[2]);
  })
    .catchError((error){
      print(DateTime.now().toIso8601String());
      print(error);
    });

  print('end main');
}