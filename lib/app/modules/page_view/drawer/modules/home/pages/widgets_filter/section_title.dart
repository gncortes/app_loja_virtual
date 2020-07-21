import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String label;
  const SectionTitle({Key key, this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(label,
        style: TextStyle(  
          color: Colors.blue,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ))
    );
  }
}
