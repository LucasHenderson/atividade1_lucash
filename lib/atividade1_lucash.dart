void soma(double n1, double n2) {
  print('A soma dos números é: '+ (n1 + n2).toString());
}

double somaReturn(double n1, double n2) {
  return n1 + n2;
}

void subtracao(double n1, double n2) {
  print('A subtração dos números é: '+ (n1 - n2).toString());
}

void multiplicacao(double n1, double n2) {
  print('A mutiplicação dos números é: '+ (n1 * n2).toString());
}

void divisao(double n1, double n2) {
  print('A divisão dos números é: '+ (n1 / n2).toString());
}

void saudacao(String nome) {
  if (nome.isNotEmpty) {
    print('Olá, '+nome+'!');
  } else {
    print('Olá, Visitante!');
  }
}

int fatorial(int n) {
  if (n <= 1) {
    return 1; // Caso base: fatorial de 0 ou 1 é 1
  } else {
    return n * fatorial(n - 1);
  }
}
