import 'package:flutter/material.dart';
class KiteClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width / 2, 0) // Top
      ..lineTo(size.width, size.height * 0.6) // Right (lower, not middle)
      ..lineTo(size.width / 2, size.height) // Bottom
      ..lineTo(0, size.height * 0.6) // Left (lower, not middle)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
