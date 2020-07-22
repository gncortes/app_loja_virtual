import 'package:mobx/mobx.dart';
import 'models/client.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final Client client;

  _LoginControllerBase(this.client);

  @computed
  bool get isValid {
    return validateEmail() == null && validatePassword() == null;
  }

  String validateEmail() {
    return (client.email == null || client.email.isEmpty)
        ? "Digite seu email para entrar em sua conta"
        : !(client.email.contains("@")) ? "Digite um email valido" : null;
  }

  String validatePassword() {
    return (client.password == null)
        ? "Digite sua senha"
        : (client.password.length < 4)
            ? "Digite uma senha com mais de 4 caracteres"
            : null;
  }
}
