import 'package:flutter/material.dart';

class OrderByOption extends StatelessWidget {

  final VoidCallback onPressed;
  final String label;
  final bool isSelected;

  OrderByOption({Key key, this.onPressed, this.label, this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.transparent : Colors.grey[300]),
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          color: isSelected ? Colors.blue : Colors.white,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
          ),),
        ),),
    );
  }
}
