import 'package:flutter/material.dart';

class OctagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double edge = size.width * 0.25;
    final path = Path()
      ..moveTo(edge, 0)
      ..lineTo(size.width - edge, 0)
      ..lineTo(size.width, edge)
      ..lineTo(size.width, size.height - edge)
      ..lineTo(size.width - edge, size.height)
      ..lineTo(edge, size.height)
      ..lineTo(0, size.height - edge)
      ..lineTo(0, edge)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
