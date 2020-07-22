import 'package:flutter_modular/flutter_modular.dart';
import 'pages/settings_controller.dart';
import 'pages/settings_page.dart';

class SettingsModule extends ChildModule{
  @override
  List<Bind> get binds => [Bind((i) => SettingsController())];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => SettingsPage(),),
  ];

  static Inject get to => Inject<SettingsModule>.of();

}