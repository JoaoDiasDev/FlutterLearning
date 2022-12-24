void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Joao', idade: 22);
  Pessoa pessoa2 = Pessoa(nome: 'Amanda', idade: 24);

  int numero = 10;
  funcao(numero);
  print(numero);
}

void funcao(int x) {
  x = 20;
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
}
