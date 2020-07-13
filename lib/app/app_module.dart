import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/home/home_module.dart';

class AppModule extends MainModule{
  @override
  List<Bind> get binds => [Bind((i)=> AppController(),)];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router('/',module: HomeModule(),transition: TransitionType.fadeIn),
  ];

}