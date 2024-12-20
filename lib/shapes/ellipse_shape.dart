import 'package:flutter/material.dart';

class EllipseClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addOval(
        Rect.fromLTWH(0, size.height * 0.2, size.width, size.height * 0.6));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
