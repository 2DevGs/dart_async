import 'dart:io';

void main() {

  print('Iniciando main');
    print(temperaturaAtual());
    print(previsaoAmanha());
  print('Finalizando main');


}

  String previsaoAmanha() {
    sleep(const Duration(seconds: 3));
    return 'Amanha fará 20º';
  }

  String temperaturaAtual() {
    sleep(const Duration(seconds: 4));
    return 'Está fazendo 25º';
  }