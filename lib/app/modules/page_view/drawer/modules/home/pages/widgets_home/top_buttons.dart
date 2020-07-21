import 'package:flutter/material.dart';
import 'top_button.dart';

class TopButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 1.0,
                offset: Offset(0, 2),
                spreadRadius: 1,
                color: Colors.grey[400]),
          ],
        ),
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: TopButton(
                onPressed: () {
                  
                },
                label: "Categorias",
                boxDecoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: TopButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/filter');
                },
                label: "Filtros",
                boxDecoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(left: BorderSide(color: Colors.grey[400])),
                ),
              ),
            ),
          ],
        ));
  }
}
