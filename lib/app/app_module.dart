import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_controller.dart';
import 'app_widget.dart';
import 'drawer/store/custom_drawer_controller.dart';
import 'modules/page_view/page_view_module.dart';
import 'modules/page_view/pages/page_view_controller.dart';

class AppModule extends MainModule {

  @override
  List<Bind> get binds => [
    Bind((i) => AppController(),),
    Bind((i) => CustomDrawerController(),lazy: false),
    Bind((i) => PageViewController()),
  ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router('/',
      module: PageViewModule(),),
  ];
}
