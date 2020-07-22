import 'package:mobx/mobx.dart';
part 'client.g.dart';

class Client = _ClientBase with _$Client;

abstract class _ClientBase with Store {
  @observable
  String email;
  @observable
  String password;
  @action
  changeEmail(value) => email = value;
  @action
  changePassword(value) => password = value;
}