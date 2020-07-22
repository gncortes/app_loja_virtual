import 'package:app_loja_virtual/app/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: 
        Center(child: 
          Text("Configurações"),),
      ),
      drawer: CustomDrawer(),
    );
  }
}