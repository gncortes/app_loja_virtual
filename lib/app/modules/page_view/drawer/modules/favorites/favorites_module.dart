import 'package:flutter_modular/flutter_modular.dart';
import 'favorites_controller.dart';
import 'favorites_page.dart';

class FavoritesModule extends ChildModule{
  @override
  List<Bind> get binds => [Bind((i) => FavoritesController())];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => FavoritesPage(),),
  ];

  static Inject get to => Inject<FavoritesModule>.of();

}