void main() {
  Cachorro cachorro1 = Cachorro('Rex', 3);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();
  cachorro1.morrer();

  print(cachorro1);

  Gato gato1 = Gato('FluFlu', 5);
  gato1.vidas--;
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  gato1.morrer();
  print(gato1.idade);

  print(gato1);
}

abstract class Animal {
  Animal(this.nome, this.idade);

  String? nome;
  int? idade;

  void comer() {
    print('Comeu');
  }

  void dormir() {
    print('Dormiu');
  }

  void morrer();
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade) {
    print('Criou o cachorro $nome');
  }
  void latir() {
    print('au au');
  }

  @override
  void dormir() {
    super.dormir();
    print("Roncando muito");
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Cachorro: $nome Idade: $idade';
  }

  @override
  void morrer() {
    print('Muito Triste :(');
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);
  int vidas = 7;

  void miar() {
    print('miauuuuu');
    dormir();
  }

  @override
  String toString() {
    return 'Gato: $nome Idade: $idade';
  }

  @override
  void morrer() {
    vidas--;
    print('Sobrou $vidas vidas');
  }
}
