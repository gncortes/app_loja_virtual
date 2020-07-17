import 'drawer/custom_drawer.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'drawer/custom_drawer_controller.dart';
import 'page_view.dart';
import 'page_view_controller.dart';

class PageViewModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i)=> CustomDrawer()),
    Bind((i)=> CustomDrawerController()),
    Bind((i)=> PageViewController()),];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => PagesView(),),
  ];

  static Inject get to => Inject<PageViewModule>.of();

}