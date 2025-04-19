void main() {

    var f1 = Future.delayed(Duration(seconds: 2), () => 'F1');
    var f2 = Future.delayed(Duration(seconds: 1), () => 'F2');
    var f3 = Future.delayed(Duration(seconds: 3), () => 'F3');
    var f4 = Future.delayed(Duration(milliseconds: 200), () => 'F4');
    var f5 = Future.delayed(Duration(milliseconds: 100), () => Future.error('Error'));

  Future.any([f1,f2,f3,f4,f5])
  .then(print)
  .catchError(print);


}