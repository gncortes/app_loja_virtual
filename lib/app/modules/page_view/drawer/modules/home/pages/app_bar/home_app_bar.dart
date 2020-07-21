import 'package:app_loja_virtual/app/modules/page_view/drawer/modules/home/stores/app_bar_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'widgets/search_dialog.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final num height;
  const HomeAppBar({Key key, this.height}) : super(key: key);

  @override
  _HomeAppBarState createState() => _HomeAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height * 0.09);
}

class _HomeAppBarState extends ModularState<HomeAppBar, AppBarStore> {
  String searchText;

  _openSearch(String search) async {
    searchText = await showDialog(
      context: context,
      builder: (context) => SearchDialog(search: search),
    );
    controller.changeSearch(searchText);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Observer(builder: (_) {
        return Visibility(
          visible: controller.search == "" || controller.search == null,
          child: GestureDetector(
            child: Container(),
          ),
          replacement: GestureDetector(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  width: constraints.biggest.width,
                  child: Text(controller.search),
                );
            }),
            onTap: () => _openSearch(controller.search),
          ),
        );
      }),
      centerTitle: true,
      actions: <Widget>[
        Observer(builder: (_) {
          return Visibility(
            visible: controller.search == "" || controller.search == null,
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                _openSearch(controller.search);
              },
            ),
            replacement: IconButton( 
              icon: Icon(Icons.close),
              onPressed: () => controller.changeSearch(""),
            ),
          );
        })
      ],
    );
  }
}
