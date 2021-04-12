import 'package:flutter/material.dart';
import 'package:bmi_calculator/constante.dart';

class ResabledCard extends StatelessWidget {
  ResabledCard({this.colour, this.child});
  final Color colour;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
