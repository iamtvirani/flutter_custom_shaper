import 'package:flutter/material.dart';

class LightningClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width * 0.4, 0)
      ..lineTo(size.width, size.height * 0.4)
      ..lineTo(size.width * 0.6, size.height * 0.4)
      ..lineTo(size.width * 0.8, size.height)
      ..lineTo(0, size.height * 0.6)
      ..lineTo(size.width * 0.4, size.height * 0.6)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
