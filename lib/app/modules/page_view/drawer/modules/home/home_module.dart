import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'pages/filter_page.dart';
import 'pages/home_page.dart';
import 'stores/app_bar_store.dart';

class HomeModule extends ChildModule{
  @override
  List<Bind> get binds => [Bind((i) => HomeController()),
    Bind((i) => AppBarStore())];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => HomePage(),),
    Router('/filter', child: (context, agrs) => FilterPage(),)
  ];

  static Inject get to => Inject<HomeModule>.of();

}