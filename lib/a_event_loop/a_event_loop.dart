
import 'dart:async';
void main() {
  // Timer.run(() { });
  // Timer(Duration.zero, () => print(''));

  // scheduleMicrotask(() => print(''));
  print('Inicio main');

  Timer.run(() {
    scheduleMicrotask(() => print('MicroTask X'));
    print('Event 1');
  });
  Timer.run(() => print('Event 2'));
  Timer.run(() => print('Event 3'));
  scheduleMicrotask(() => print('MicroTask 1'));
  scheduleMicrotask(() => print('MicroTask 2'));

  print('Fim main');


}