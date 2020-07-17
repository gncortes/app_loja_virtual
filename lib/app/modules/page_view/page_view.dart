import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'drawer/modules/announcements/annoucements_module.dart';
import 'drawer/modules/chat/chat_module.dart';
import 'drawer/modules/favorites/favorites_module.dart';
import 'drawer/modules/home/home_module.dart';
import 'drawer/modules/my_acount/my_acount_module.dart';
import 'drawer/modules/my_announcements/my_annoucements_module.dart';
import 'drawer/modules/settings/settings_module.dart';
import 'page_view_controller.dart';

class PagesView extends StatefulWidget {

  @override
  _PagesViewState createState() => _PagesViewState();
}

class _PagesViewState extends ModularState<PagesView,PageViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          RouterOutlet(module: HomeModule(),),
          RouterOutlet(module: AnnoucementsModule(),),
          RouterOutlet(module: MyAnnoucementsModule(),),
          RouterOutlet(module: ChatModule(),),
          RouterOutlet(module: FavoritesModule(),),
          RouterOutlet(module: MyAcountModule(),),
          RouterOutlet(module: SettingsModule(),),
        ],
      ),
    );
  }
}
