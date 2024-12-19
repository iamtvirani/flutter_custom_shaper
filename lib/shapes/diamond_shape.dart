import 'package:flutter/material.dart';

class DiamondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0); // Top
    path.lineTo(size.width, size.height / 2); // Right
    path.lineTo(size.width / 2, size.height); // Bottom
    path.lineTo(0, size.height / 2); // Left
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
