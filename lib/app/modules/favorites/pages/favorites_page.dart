import 'package:app_loja_virtual/app/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: 
        Center(child: 
          Text("Favoritos"),),
      ),
      drawer: CustomDrawer(),
    );
  }
}