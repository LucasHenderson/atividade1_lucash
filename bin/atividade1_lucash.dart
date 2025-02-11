import 'package:atividade1_lucash/atividade1_lucash.dart' as atividade1_lucash;

import 'dart:io';

void main(List<String> arguments) {
  /*
  //1 - Imprima "Hello, Dart!"
  print('Hello, Dart!');

  //2 - Variáveis e Tipos: Crie variáveis do tipo int, double, String, bool e imprima seus valores.
  int variavelInt = 10;
  double variavelDouble = 10;
  String variavelString = "Lucas";
  bool variavelBool = false;
  print('Imprimindo valores das variaveis: '+ variavelInt.toString() +
   variavelDouble.toString() + variavelString + variavelBool.toString());

  //3 - Operações Matemáticas: Peça dois números ao usuário e exiba a soma, subtração, multiplicação e divisão.
  double numero1; double numero2;
  print('Digite o primeiro numero: ');
  numero1 = double.parse( stdin.readLineSync()!  );

  print('Digite o segundo numero: ');
  numero2 = double.parse( stdin.readLineSync()!  );

  atividade1_lucash.soma(numero1, numero2);
  atividade1_lucash.subtracao(numero1, numero2);
  atividade1_lucash.multiplicacao(numero1, numero2);
  atividade1_lucash.divisao(numero1, numero2);

  //4 - Conversão de Tipos: Converta um número double para int e vice-versa.
  int numeroInt = 10;
  double numeroDouble = 20;
  print(numeroInt.toDouble());
  print(numeroDouble.toInt());
  
  //5 - Estruturas Condicionais: Verifique se um número é par ou ímpar.
  int numero;
  print('Digite um número: ');
  numero = int.parse( stdin.readLineSync()!  );
  if (numero%2 == 0) {
    print('O número digitado é par');
  } else {
    print('O número digitado é ímpar');
  }
  
  //6 - Switch Case: Crie um programa que leia um dia da semana e exiba uma mensagem correspondente.
  int dia;
  print('Digite um número que represente um dia da semana: ');
  dia = int.parse( stdin.readLineSync()!  );
  switch (dia) {
    case 1:
      print("Segunda-feira");
      break;
    case 2:
      print("Terça-feira");
      break;
    case 3:
      print("Quarta-feira");
      break;
    case 4:
      print("Quinta-feira");
      break;
    case 5:
      print("Sexta-feira");
      break;
    case 6:
      print("Sábado");
      break;
    case 7:
      print("Domingo");
      break;
    default:
      print("Número não reconhecido");
  }
  
  //7 - Loop for: Exiba os números de 1 a 10.
  for (int n=1; n<11; n++) {
    print(n);
  }
  */
  //8 - Loop while: Some os números de 1 a 100 e exiba o resultado.
  int soma = 0;
  int numero = 1;
  while (numero <= 100) {
    soma += numero; //
    numero++;
  }
  print("A soma dos números de 1 a 100 é: $soma");
}

