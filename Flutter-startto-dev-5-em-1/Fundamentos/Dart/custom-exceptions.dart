void main() {
  try {
    funcao(-10);
  } on VoceEstaFazendoAlgoErrado {
    print('Custom minha exception!!');
  } catch (e) {
    print(e);
  }
}

void funcao(int x) {
  if (x <= 0) {
    throw VoceEstaFazendoAlgoErrado();
  }
  print(x);
}

class VoceEstaFazendoAlgoErrado implements Exception {
  String toString() {
    return 'Você não pode passar um valor menor ou igual a 0';
  }
}
