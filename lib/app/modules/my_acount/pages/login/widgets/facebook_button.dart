import 'package:app_loja_virtual/app/modules/my_acount/pages/login/store/login_facebook_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FacebookButton extends StatefulWidget {
  @override
  _FacebookButtonState createState() => _FacebookButtonState();
}

class _FacebookButtonState extends ModularState<FacebookButton,LoginFacebookController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      height: 50,
      child: Observer(builder: (_) {
        return RaisedButton(
          color: Color.fromRGBO(58, 89, 152, 1),
          disabledColor: Color.fromRGBO(58, 89, 152, 0.8),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          onPressed: controller.isLogginWithFacebook ? null : () => controller.goLoginWithFacebook(),
          child: controller.isLogginWithFacebook
              ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              )
              : Text(
                  "Entrar com o Facebook",
                  style: TextStyle(
                    color: Colors.white,
                  fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
              ),
        );
      }),
    );
  }
}
