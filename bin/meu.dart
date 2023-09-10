import 'dart:core';
import 'package:meu/meu.dart' as meu;
import 'package:meu/models/console_utils.dart';
import 'package:meu/models/nome_invalido.dart';
import 'package:meu/models/pessoa.dart';

void main(List<String> arguments) {
 print("Sistema de Calculo do IMC");
 String nome = ConsoleUtils.lerStringTexto("Digite o seu nome: ");
 
 if (nome.trim() == ""){
  throw NomeInvalido();
 }

 var pessoa = Pessoa(nome);

 double? peso = ConsoleUtils.lerDoubleTexto("Digite o seu peso: ");
 pessoa.setPeso(peso!);

 double? altura = ConsoleUtils.lerDoubleTexto("Digite a sua altura: ");
 pessoa.setAltura(altura!);
 
 var res = pessoa.getCalculoIMC();
 print("$nome seu calculo de imc é : $res"  );
 var resu = pessoa.getResultado(); 
 print("Seu resultado: $resu ");


}
