import 'package:app_loja_virtual/app/modules/my_acount/pages/login/widgets/facebook_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'store/login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Entrar"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FacebookButton(),
            divisoria(),
            textAcessarComEmail(),
            Padding(
              padding: const EdgeInsets.only(left: 3, bottom: 4),
              child: text("E-mail"),
            ),
            Observer(builder: (_) {
              return TextField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  errorText: controller.validateEmail,
                ),
                onChanged: controller.client.changeEmail,
                enabled: !controller.isLoggin,
              );
            }),
            campoDeTextSenha(),
            Observer(builder: (_) {
              return TextField(
                obscureText: true,
                autocorrect: false,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  errorText: controller.validatePassword,
                ),
                onChanged: controller.client.changePassword,
                enabled: !controller.isLoggin,
              );
            }),
            const SizedBox(
              height: 20,
            ),
            Observer(builder: (_) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 24),
                height: 50,
                child: RaisedButton(
                  color: Colors.pink,
                  disabledColor: Colors.pink.withOpacity(0.5),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  onPressed:
                      controller.isValid ? () => controller.goLogin() : null,
                  child: controller.isLoggin
                      ? CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        )
                      : Text(
                          "Entrar em sua conta",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                ),
              );
            }),
          ],
        ),
      )),
    );
  }

  Widget textAcessarComEmail() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 11),
      child: Text(
        "Acessar com E-mail",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.grey[900]),
      ),
    );
  }

  Widget text(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey[800],
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget campoDeTextSenha() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 3,
        bottom: 4,
        top: 26,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          text("Senha"),
          esqueceuSuaSenha(),
        ],
      ),
    );
  }

  Widget esqueceuSuaSenha() {
    return GestureDetector(
        child: Text(
          "Esqueceu sua senha",
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.blue,
          ),
        ),
        onTap: () {});
  }

  Widget divisoria() {
    return Row(
      children: <Widget>[
        Expanded(child: Divider(color: Colors.grey,)),
        const Padding( 
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text("ou"),
        ),
        Expanded(child: Divider(color: Colors.grey,)),
      ],
    );
  }
}
