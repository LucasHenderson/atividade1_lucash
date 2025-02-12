import 'package:atividade1_lucash/atividade1_lucash.dart' as atividade1_lucash;

import 'dart:io';

class Carro {
  // Propriedades da classe
  String marca;
  int ano;
  //modelo é uma propriedade privada por ter "_"
  String _modelo;

  Carro(this.marca, this._modelo, this.ano);

  String get modelo => _modelo;

  set modelo(String novoModelo) {
    if (novoModelo.isNotEmpty) {
      _modelo = novoModelo;
    } else {
      print('Modelo não pode ser vazio.');
    }
  }

  void exibirInformacoes() {
    print('Marca: $marca');
    print('Modelo: $_modelo');
    print('Ano: $ano');
  }
}

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
  
  //8 - Loop while: Some os números de 1 a 100 e exiba o resultado.
  int soma = 0;
  int numero = 1;
  while (numero <= 100) {
    soma += numero; //
    numero++;
  }
  print("A soma dos números de 1 a 100 é: $soma");
  
  //9 - Lista Simples: Crie uma lista de frutas e imprima cada uma delas usando um loop.
  List frutas = ['abacaxi', 'morango', 'laranja', 'limão'];
  for (int x = 0; x<frutas.length; x++){
    print(frutas[x]);
  }
  
  //10 - Mapa (Dicionário): Crie um mapa com nomes e idades e exiba os valores.
  Map<String, int> pessoas = {'lucas': 22, 'jose': 50, 'maria': 48};
  print(pessoas);
  
  //11 - Função Simples: Crie uma função que receba dois números e retorne a soma deles.
  double numero1; double numero2;
  print('Digite o primeiro numero: ');
  numero1 = double.parse( stdin.readLineSync()!  );

  print('Digite o segundo numero: ');
  numero2 = double.parse( stdin.readLineSync()!  );

  double resultado = atividade1_lucash.somaReturn(numero1, numero2);
  print(resultado);
  
  //12 - Função com Valor Padrão: Faça uma função que receba um nome e exiba uma saudação. Se nenhum
  // nome for passado, use "Visitante".
  String nome;
  print('Digite seu nome: ');
  nome = stdin.readLineSync()!;
  atividade1_lucash.saudacao(nome);
  
  //13 - Função Recursiva: Calcule o fatorial de um número.
  int numero = 5;
  print('Fatorial de $numero é: ${atividade1_lucash.fatorial(numero)}');
  
  //14 - Manipulação de Listas: Ordene uma lista de números.
  List<int> numeros = [3, 7, 4, 1, 9, 2, 10];
  numeros.sort();
  print(numeros);
  
  //15 - Filtro em Listas: Filtre os números pares de uma lista usando .where().
  List<int> numeros = [3, 7, 4, 1, 9, 2, 10];
  List<int> numerosPares = numeros.where((numero) => numero % 2 == 0).toList();
  print('Números pares: $numerosPares');
  
  //16 - Exceções: Crie um programa que tente dividir um número por zero e trate o erro.
  int numero1 = 10;
  int numero2 = 0;
  try {
    int resultado = numero1 ~/ numero2;
    print('Resultado: $resultado');
  } catch (e) {
    print('Erro: Não é possível dividir por zero!');
    print(e);
  }
  
  //17 - Classe e Objeto: Crie uma classe Carro com 
  //propriedades marca, modelo e ano, e um método para exibir as informações.
  Carro meuCarro = Carro('Toyota', 'Corolla', 2020);
  meuCarro.exibirInformacoes();
  
  //18 - Encapsulamento: Modifique a classe Carro para que modelo seja privado e crie métodos getter e setter.
  Carro meuCarro = Carro('Toyota', 'Corolla', 2020);
  meuCarro.exibirInformacoes();
  meuCarro.modelo = 'Camry';
  meuCarro.exibirInformacoes();
  meuCarro.modelo = '';  // Isso vai imprimir a mensagem de erro
  */
}

