import 'package:mobx/mobx.dart';
import 'models/client.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final Client client;

  _LoginControllerBase(this.client);

  @observable
  bool isLoggin = false;

  @action
  goLogin() async {
    isLoggin = true;
    await Future.delayed(Duration(seconds: 3));
    isLoggin = false;
  }

  @computed
  bool get isValid {
    return validateEmail == null && validatePassword == null;
  }

  String get validateEmail {
    return (client.email == null || client.email.isEmpty)
        ? "Digite seu E-mail para entrar em sua conta"
        : !(RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                .hasMatch(client.email))
            ? "Digite um E-mail valido"
            : null;
  }

  String get validatePassword {
    return (client.password == null)
        ? "Digite sua senha"
        : (client.password.length < 4)
            ? "Digite uma senha com mais de 4 caracteres"
            : null;
  }
}
