void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = 'Thor';
  cachorro1.idade = 3;
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato();
  gato1.nome = 'Junior';
  gato1.idade = 4;
  gato1.vidas--;
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  print(gato1.idade);

  print(gato1);

  Object object = Object();
  object.runtimeType;
}

class Animal {
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
  void latir() {
    print('au au');
  }

  @override
  void dormir() {
    print("dormiu roncando muito");
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Cachorro: $nome Idade: $idade';
  }
}

class Gato extends Animal {
  int vidas = 7;

  void miar() {
    print('miauuuuu');
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Gato: $nome Idade: $idade';
  }
}
