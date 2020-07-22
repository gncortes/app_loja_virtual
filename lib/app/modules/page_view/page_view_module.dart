import 'package:flutter_modular/flutter_modular.dart';
import 'pages/page_view.dart';
import 'pages/page_view_controller.dart';

class PageViewModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i)=> PageViewController()),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => PagesView(),),
  ];

  static Inject get to => Inject<PageViewModule>.of();

}