import 'package:mobx/mobx.dart';
part 'login_facebook_controller.g.dart';

class LoginFacebookController = _LoginFacebookControllerBase with _$LoginFacebookController;

abstract class _LoginFacebookControllerBase with Store {
  @observable
  bool isLogginWithFacebook = false;

  @action
  goLoginWithFacebook() async {
    isLogginWithFacebook = true;
    await Future.delayed(Duration(seconds: 3));
    isLogginWithFacebook = false;
  }
}