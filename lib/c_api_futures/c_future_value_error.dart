void main(){

  Future((){
    return 'valor X';
  }); // Incompleto vai ser executado ainda!!!!

  Future.value(''); // Sucesso
  Future.error(''); // Erro


}

  Future<String> func1() async {             //o async está encapsulando o codigo abaixo em apenas uma palavra
    return 'Qualquer valor de sucesso!';
  }
  Future<String> func1Exemplo() {
    return Future.value('Qualquer valor de sucesso!');
  }



