import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_controller.dart';
import 'app_widget.dart';
import 'drawer/custom_drawer.dart';
import 'drawer/store/custom_drawer_controller.dart';
/* import 'modules/announcements/annoucements_module.dart';
import 'modules/chat/chat_module.dart';
import 'modules/favorites/favorites_module.dart';
import 'modules/home/home_module.dart';
import 'modules/my_acount/my_acount_module.dart';
import 'modules/my_announcements/my_annoucements_module.dart';
import 'modules/settings/settings_module.dart'; */
import 'modules/page_view/page_view_module.dart';
import 'modules/page_view/pages/page_view_controller.dart';

class AppModule extends MainModule {
  final drawer = CustomDrawer();

  @override
  List<Bind> get binds => [
        Bind(
          (i) => AppController(),
        ),
        Bind((i) => CustomDrawerController()),/* 
        Bind((i) => CustomDrawer(), lazy: false), */
        Bind((i) => PageViewController()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router('/',
            module: PageViewModule(drawer), transition: TransitionType.fadeIn),
        /* Router('/annoucements',module: AnnoucementsModule(),transition: TransitionType.fadeIn),
    Router('/home',module: HomeModule(),transition: TransitionType.fadeIn),
    Router('/chat',module: ChatModule(),transition: TransitionType.fadeIn),
    Router('/favorites',module: FavoritesModule(),transition: TransitionType.fadeIn),
    Router('/my_acout',module: MyAcountModule(),transition: TransitionType.fadeIn),
    Router('/my_annoucements',module: MyAnnoucementsModule(),transition: TransitionType.fadeIn),
    Router('/settings',module: SettingsModule(),transition: TransitionType.fadeIn), */
      ];
}
