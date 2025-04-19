
void main() {

  // Future -> Icompleto, Completo com Sucesso, Completo com Erro;

  var valor = Future(() {
    // Funão assincrona;
  })
  .then((value) => {
    // Registrando função que será executada quando o futuro for completado com sucesso!
  })
  .catchError((error) {
    // Registrando funão que será executado quando o futuro for completado com erro!!!
  })
  .whenComplete(() {
    // Registrando a função que será executada SEMPRE (quando erro ou sucesso)!!!!!!
  });



}