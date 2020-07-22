import 'package:app_loja_virtual/app/modules/my_acount/pages/login/store/login_facebook_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pages/login/login_page.dart';
import 'pages/login/store/login_controller.dart';
import 'pages/login/store/models/client.dart';
import 'pages/my_acount/my_acount_controller.dart';
import 'pages/my_acount/my_acount_page.dart';

class MyAcountModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i) => MyAcountController()),
    Bind((i) => LoginController(i.get())),
    Bind((i) => Client()),
    Bind((i) => LoginFacebookController()),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => MyAcountPage(),),
    Router('/login',child: (context,agrs) => LoginPage(),),
  ];

  static Inject get to => Inject<MyAcountModule>.of();

}