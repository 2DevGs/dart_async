
import 'dart:async';

void main() {
  print('Iniciando Main');
  func1();
  func2();
  print('Finalizando Main');
}

void func1() {
  print('Iniciando Func1');
  Future.delayed(Duration(seconds: 2), () => print('Fazendo algo completo func 1'));
  print('Finalizando Func1');
}

void func2() {
  print('Iniciando Func2');
  Future.delayed(Duration(seconds: 1), () => print('Fazendo algo completo func 2'));
  print('Finalizando Func2');
}