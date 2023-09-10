import 'dart:core';
import 'dart:math';

class Pessoa{
  String _nome ="";
  double _altura = 0.0;
  double _peso = 0.0;

  Pessoa(String nome){
    _nome = nome;
  }

  void setNome(String nome){
    _nome = nome;
  }

  String getNome(){
    return _nome;
  }

  void setAltura(double altura){
    _altura = altura;
  }

  double getAltura(){
    return _altura;
  }

  void setPeso(double peso){
    _peso = peso;
  }

  double getPeso(){
    return _peso;
  }

  double getCalculoIMC(){
    return (_peso / (pow(_altura,2)));
  }

  String getResultado(){
    double imc = getCalculoIMC();
    String res = "";
    if (imc <= 16){
      res ="Magreza grave";
    } 
    if(imc >16 && imc <17){
      res = "Magreza moderada";
    }
    if(imc >=17 && imc <18.5){
      res = "Magreza leve";
    }
    if(imc >=18.5 && imc <25){
      res = "Saudavel";
    }
    if(imc >=25 && imc <30){
      res = "Sobrepeso";
    }
    if(imc >=30 && imc <35){
      res = "Obesidade nivel 1";
    }
    if(imc >=35 && imc <40){
      res = "Obesidade nivel 2 (severa)" ;
    }
    if(imc >=40 ){
      res = "Obesidade nivel 3 (morbida)" ;
    }

    return res;
  }

}