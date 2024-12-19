import 'dart:math';
import 'package:flutter/material.dart';

class SpiralClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double radius = 1;
    double angleStep = 0.1;
    double centerX = size.width / 2;
    double centerY = size.height / 2;

    path.moveTo(centerX, centerY);

    for (double angle = 0; angle < 4 * pi; angle += angleStep) {  // More rotations
      radius += 0.5;  // Gradually increase the radius for a smoother spiral
      double x = centerX + radius * cos(angle);
      double y = centerY + radius * sin(angle);
      path.lineTo(x, y);
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
