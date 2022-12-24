import 'classes-objetos-atributos.dart';

void main() {
  Pessoa.alturaPadrao = 1.80;
  Pessoa pessoa1 = Pessoa(nome: 'Joao', idade: 21);
  pessoa1.comer();
  print(pessoa1.altura);

  print(Pessoa.atributoStatic = 'Dale');

  print(Pessoa.metodoStatic());
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
  double altura = alturaPadrao;

  void comer() {
    print('Comendo...');
  }

  static String atributoStatic = 'abc';

  static String metodoStatic() {
    return 'Olá mundo $atributoStatic';
  }

  static double alturaPadrao = 0;
}
