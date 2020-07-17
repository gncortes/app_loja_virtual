import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../custom_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text("Olha mundo, estou usando modular"),
        ),
      ),
      drawer: Modular.get<CustomDrawer>(),
    );
  }
}
