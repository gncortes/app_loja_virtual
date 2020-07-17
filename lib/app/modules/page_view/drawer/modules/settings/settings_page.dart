import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../custom_drawer.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: 
        Center(child: 
          Text("Configurações"),),
      ),
      drawer: Modular.get<CustomDrawer>(),
    );
  }
}