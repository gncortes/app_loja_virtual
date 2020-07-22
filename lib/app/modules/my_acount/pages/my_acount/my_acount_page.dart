import 'package:app_loja_virtual/app/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class MyAcountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
            color: Colors.pink,
            textColor: Colors.white,
            child: Text("Fazer login"),
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
