import 'package:flutter/material.dart';

class ResabledIconButton extends StatelessWidget {
  ResabledIconButton({this.icon, this.onPresse});
  final Function onPresse;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPresse();
      },
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
