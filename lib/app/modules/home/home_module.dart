import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'pages/app_bar/stores/app_bar_store.dart';
import 'pages/filter_page.dart';
import 'pages/home_page.dart';

class HomeModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i) => HomeController()),
    Bind((i) => AppBarStore()),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => HomePage(),),
    Router('/filter', child: (context, agrs) => FilterPage(),transition: TransitionType.leftToRightWithFade)
  ];

  static Inject get to => Inject<HomeModule>.of();

}