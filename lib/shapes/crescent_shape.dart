import 'package:flutter/material.dart';

class CrescentClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..addOval(Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2))
      ..addOval(Rect.fromCircle(
          center: Offset(size.width * 0.35, size.height / 2),
          radius: size.width / 3))
      ..fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
