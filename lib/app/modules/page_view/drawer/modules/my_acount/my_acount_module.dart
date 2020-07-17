import 'package:flutter_modular/flutter_modular.dart';
import 'my_acount_page.dart';
import 'my_acount_controller.dart';

class MyAcountModule extends ChildModule{
  @override
  List<Bind> get binds => [Bind((i) => MyAcountController())];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => MyAcountPage(),),
  ];

  static Inject get to => Inject<MyAcountModule>.of();

}