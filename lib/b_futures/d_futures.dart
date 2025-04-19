
void main() {

  // print('Levando o carro para o mecânico!');

  // Future<int>(() {
    //funcao assincrona que vai fazer o  orçamento da manutenção do nosso carro! 
  //   return 10 ~/ 2;
  // }).then((valorOrcamento){
  //   print('O orçamento para arrumar o carro é de $valorOrcamento');
  // });

  // print('Fui viajar');
  // Future<String>(() {
    // Indo para USA. 
  //   throw Exception('Avião caiu.');
  //   return 'Macbook Comprado.';
  // }).then((comprado){
  //   print('Comprei meu Macbook');
  // }).catchError((error){
  //   print('Deu ruim, o avião caiu!!!!');
  // }).whenComplete(() => print('Finalizando'));

  // print('Saindo da mecânica!');


  // Future<int>(() {
  //   return 10 ~/ 2;
  // }).then((value) => print('Valor calculado é $value'));

  // Future<int>(() {
  //   return 10 ~/ 0;
  // }).then(
  //   (value) => print('Valor calculado é $value'),
  //   onError: (error) {
  //     print('Ocorreu um erro: $error');
  //     throw Exception('Outro erro');
  //   }
  // ).catchError((error){
  //   print('Ocorreu um erro no CatchError : $error');
  // });

  // try{

  // } on Exception {

  // } on UnsupportedError {

  // }

  Future<int>(() {
    return 10 ~/ 0;
  }).then((value) => print('Valor calculado é $value'))
  .catchError((error) {
      print('Ocorreu um erro no CatchError $error');
    }, 
    test: (error) => error is UnsupportedError
  ).catchError((error) {
      print('Ocorreu um erro no CatchError2 $error');
    }, 
  );


}