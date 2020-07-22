import 'package:flutter_modular/flutter_modular.dart';
import 'pages/my_annoucements_controller.dart';
import 'pages/my_annoucements_page.dart';

class MyAnnoucementsModule extends ChildModule{
  @override
  List<Bind> get binds => [Bind((i) => MyAnnoucementsController())];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => MyAnnoucementsPage(),),
  ];

  static Inject get to => Inject<MyAnnoucementsModule>.of();

}