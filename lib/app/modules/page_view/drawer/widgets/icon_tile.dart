import 'package:flutter/material.dart';

class IconTile extends StatelessWidget {

  final String label;
  final IconData icon;
  final GestureTapCallback onTap;
  final bool highlighted;
  const IconTile({this.label, this.icon, this.onTap, this.highlighted});

  @override
  Widget build(BuildContext context) {
    return ListTile( 
      title: Text(label),
      leading: Icon( 
        icon,
      ),
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      selected: highlighted,
    );
  }
}
