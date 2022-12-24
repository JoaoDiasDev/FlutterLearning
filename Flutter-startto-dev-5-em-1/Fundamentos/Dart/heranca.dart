void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = 'Thor';
  cachorro1.idade = 3;
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  Gato gato1 = Gato();
  gato1.nome = 'Junior';
  gato1.idade = 4;
  gato1.vidas--;
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  print(gato1.idade);

  List<Animal> animais = [];
  animais.add(gato1);
  animais.add(cachorro1);

  Animal animal1 = funcao();
  if (animal1 is Cachorro) {
    animal1.latir();
  } else if (animal1 is Gato) {
    animal1.miar();
  }
}

Animal funcao() {
  return Cachorro();
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
}

class Cachorro extends Animal {
  void latir() {
    print('au au');
  }
}

class Gato extends Animal {
  int vidas = 7;

  void miar() {
    print('miauuuuu');
  }
}
