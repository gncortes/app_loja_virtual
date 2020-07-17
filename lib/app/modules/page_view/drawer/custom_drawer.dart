import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import '../page_view_controller.dart';
import 'custom_drawer_controller.dart';
import 'widgets/custom_header.dart';
import 'widgets/icon_tile.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState
    extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: CustomHeader(),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Flexible(
            flex: 4,
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
        : Navigator.pop(context);
    controller.changePage(page);
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
              onTap: () => _goAndPop(0),
              highlighted: controller.isPage(0),
            ),
            IconTile(
              label: 'Anuncios',
              icon: Icons.list,
              onTap: () => _goAndPop(1),
              highlighted: controller.isPage(1),
            ),
            IconTile(
              label: 'Inserir anuncios',
              icon: Icons.edit,
              onTap: () => _goAndPop(2),
              highlighted: controller.isPage(2),
            ),
            IconTile(
              label: 'Chat',
              icon: Icons.chat,
              onTap: () => _goAndPop(3),
              highlighted: controller.isPage(3),
            ),
            IconTile(
              label: 'Favoritos',
              icon: Icons.favorite,
              onTap: () => _goAndPop(4),
              highlighted: controller.isPage(4),
            ),
            IconTile(
              label: 'Minha conta',
              icon: Icons.person,
              onTap: () => _goAndPop(5),
              highlighted: controller.isPage(5),
            ),
            IconTile(
              label: 'Configurações',
              icon: Icons.settings,
              onTap: () => _goAndPop(6),
              highlighted: controller.isPage(6),
            ),
          ],
        );
      }),
    );
  }

  final pageController = Modular.get<PageViewController>();
  final controller = Modular.get<CustomDrawerController>();
  ReactionDisposer disposer;
  @override
  void initState() {
    // TODO: implement initState
    controller.changePage(pageController.currentPage);
    super.initState();
    
  }

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
