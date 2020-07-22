import 'package:app_loja_virtual/app/drawer/custom_drawer.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pages/page_view.dart';
import 'pages/page_view_controller.dart';

class PageViewModule extends ChildModule{
  final CustomDrawer drawer;
  PageViewModule(this.drawer);
  @override
  List<Bind> get binds => [
    Bind((i)=> PageViewController()),
    Bind((drawer) => CustomDrawer()),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => PagesView(),),
  ];

  static Inject get to => Inject<PageViewModule>.of();

}