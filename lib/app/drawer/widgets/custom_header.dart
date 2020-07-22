import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final bool onThisPage;
  const CustomHeader({Key key, this.onThisPage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person,
              color: onThisPage? Colors.blue : Colors.black,
              size: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Bem vindo a loja virtual"),
                Text("Clique aqui para fazer login")
              ],
            )
          ],
        ),
      ),
    );
  }
}
