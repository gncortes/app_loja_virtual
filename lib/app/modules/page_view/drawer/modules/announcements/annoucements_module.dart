import 'package:flutter_modular/flutter_modular.dart';
import 'annoucements_controller.dart';
import 'annoucements_page.dart';

class AnnoucementsModule extends ChildModule{
  @override
  List<Bind> get binds => [Bind((i) => AnnoucementsController())];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => AnnoucementsPage(),),
  ];

  static Inject get to => Inject<AnnoucementsModule>.of();

}