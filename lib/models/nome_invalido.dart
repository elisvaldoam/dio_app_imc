class NomeInvalido implements Exception{
  String error() => "Nome Inválido";

  @override
  String toString(){
    return "NomeInvalido: ${error()}";
  }
}