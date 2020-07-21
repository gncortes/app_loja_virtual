import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../custom_drawer.dart';
import 'app_bar/home_app_bar.dart';
import 'widgets_home/top_buttons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    return Scaffold(
      appBar: HomeAppBar(height: height,),
      body: Column(children: <Widget>[
          TopButtons(),
        ],
      ),
      drawer: Modular.get<CustomDrawer>(),
    );
  }
}
