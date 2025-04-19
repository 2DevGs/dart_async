
import 'dart:async';

Future<void> main() async {

  final usuario = UsuarioRepository();
    usuario.salvarComum((sucess){
      print('Sucesso $sucess');
    }, (error) {
      print('Erro $error');
    });

  try {
  final sucesso = await usuario.salvarCompleter();
  print('Sucesso $sucesso');
  }catch (e) {
    print('Erro: $e');
  }

}

class UsuarioRepository {

  void salvarComum(void Function(String) callbackSucess, void Function(String) callbackError) {
    Timer(Duration(seconds: 2), (){
      try {
        throw Exception();
        callbackSucess('Usuario salvo com sucesso!');
      }catch (e) {
        callbackError('Usuario nao foi salvo!');
      }
    });
  }

  Future<String> salvarCompleter() {
    final completer = Completer<String>();
    Timer(Duration(seconds: 2), (){
      try {
        // throw Exception();
        completer.complete('Usuario salvo com sucesso!');
      }catch (e) {
        completer.completeError('Usuario nao foi salvo!');
      }
    });
    return completer.future;
  }

}