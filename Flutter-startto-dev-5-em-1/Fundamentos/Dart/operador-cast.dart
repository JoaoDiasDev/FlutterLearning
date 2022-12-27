void main() {
  Cachorro cachorro1 = Cachorro('Rex', 3);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato('FluFlu', 5);
  gato1.vidas--;
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  print(gato1.idade);

  print(gato1);

  // Cachorro animal1 = funcao() as Cachorro;
  Animal animal1 = funcao();
  if (animal1 is Cachorro) {
    animal1.latir();
  }
}

Animal funcao() {
  return Cachorro('Dog', 2);
}

class Animal {
  Animal(this.nome, this.idade);

  String? nome;
  int? idade;

  void comer() {
    print('Comeu');
  }

  void dormir() {
    print('Dormiu');
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Nome: $nome Idade: $idade';
  }
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
    // TODO: implement toString
    return 'Gato: $nome Idade: $idade';
  }
}
