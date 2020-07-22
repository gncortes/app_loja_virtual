import 'package:app_loja_virtual/app/modules/page_view/pages/page_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'store/custom_drawer_controller.dart';
import 'widgets/custom_header.dart';
import 'widgets/icon_tile.dart';

const HOME_PAGE = 0;
const ANNOUCEMENTS_PAGE = 1;
const MY_ANNOUCEMENTS_PAGE = 2;
const CHAT_PAGE = 3;
const FAVORITES_PAGE = 4;
const SETTINGS_PAGE = 5;
const MY_ACOUNT_PAGE = 6;

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState
    extends ModularState<CustomDrawer, CustomDrawerController> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 3,
            child: GestureDetector(
              child: Observer(builder: (_) {
                return CustomHeader(
                  onThisPage: controller.isPage(MY_ACOUNT_PAGE),
                );
              }),
              onTap: () {
                controller.changePage(MY_ACOUNT_PAGE);
              },
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Flexible(
            flex: 7,
            child: iconSection(),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Flexible(
            flex: 1,
            child: Container(),
          ),
        ],
      ),
    );
  }

  _goAndPop(int page) {
    page == controller.currentPage
        ? Navigator.pop(context)
        : controller.changePage(page);
    Navigator.pop(context);
  }

  Widget iconSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Observer(builder: (_) {
        return ListView(
          children: <Widget>[
            IconTile(
              label: 'Tela Inicial',
              icon: Icons.home,
              onTap: () => _goAndPop(HOME_PAGE),
              highlighted: controller.isPage(HOME_PAGE),
            ),
            IconTile(
              label: 'Anuncios',
              icon: Icons.list,
              onTap: () => _goAndPop(ANNOUCEMENTS_PAGE),
              highlighted: controller.isPage(ANNOUCEMENTS_PAGE),
            ),
            IconTile(
              label: 'Inserir anuncios',
              icon: Icons.edit,
              onTap: () => _goAndPop(MY_ANNOUCEMENTS_PAGE),
              highlighted: controller.isPage(MY_ANNOUCEMENTS_PAGE),
            ),
            IconTile(
              label: 'Chat',
              icon: Icons.chat,
              onTap: () => _goAndPop(CHAT_PAGE),
              highlighted: controller.isPage(CHAT_PAGE),
            ),
            IconTile(
              label: 'Favoritos',
              icon: Icons.favorite,
              onTap: () => _goAndPop(FAVORITES_PAGE),
              highlighted: controller.isPage(FAVORITES_PAGE),
            ),
            IconTile(
              label: 'Configurações',
              icon: Icons.settings,
              onTap: () => _goAndPop(SETTINGS_PAGE),
              highlighted: controller.isPage(SETTINGS_PAGE),
            ),
          ],
        );
      }),
    );
  }

  @override
  void initState() {
    super.initState();
    when((r) => controller.currentPage != pageController.page.round(), () {
      controller.changePage(pageController.page.round());
    });
  }

  final pageController = Modular.get<PageViewController>();
  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    disposer = reaction((_) => controller.currentPage, (currentPage) {
      pageController.jumpToPage(currentPage);
    });
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }
}
