// void main2() {
//   print('Início');
//   reqUsuario().then((usuario) {
//     print('Encontrou $usuario');
//     autenticar(usuario).then((autencticado) {
//       print(autencticado);
//     });
//   });
//   print('Fim');
// }

void main() async {
  print('Início');
  await auxiliar();
  print('Fim');
}

Future<bool> auxiliar() async {
  String usuario = await reqUsuario();
  print('Econtrou!! $usuario');
  try {
    bool sucesso = await autenticar(usuario);
    print('Autenticado');
    return sucesso;
  } catch (e) {
    print('Usuario incorreto');
    return false;
  }
}

Future<String> reqUsuario() async {
  await Future.delayed(Duration(seconds: 2));
  print('Econtrou usuário João Dias');
  return 'João Dias';
}

Future<bool> autenticar(String usuario) async {
  await Future.delayed(Duration(seconds: 2));
  if (usuario == 'João Dias') return true;
  throw UsuarioInvalido();
}

class UsuarioInvalido implements Exception {}
