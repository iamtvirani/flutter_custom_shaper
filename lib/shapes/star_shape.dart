import 'package:flutter/material.dart';
import 'dart:math' as Math;

class StarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double cx = size.width / 2;
    final double cy = size.height / 2;
    final double radius = size.width / 2;

    for (int i = 0; i < 10; i++) {
      final angle = i * 36 * (3.14159 / 180.0);
      final r = i % 2 == 0 ? radius : radius / 2;
      path.lineTo(cx + r * Math.cos(angle), cy + r * Math.sin(angle));
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
