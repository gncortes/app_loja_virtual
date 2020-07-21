import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final BoxDecoration boxDecoration;

  const TopButton({Key key, this.onPressed, this.label, this.boxDecoration}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: boxDecoration,
        child: Text(label,
          style: TextStyle(  
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          )),
      ),
    );
  }
}
