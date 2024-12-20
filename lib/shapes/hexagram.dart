import 'dart:math';

import 'package:flutter/material.dart';

class HexagramClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 2;

    // Create upward triangle
    path.moveTo(centerX, centerY - radius); // Top point
    path.lineTo(centerX - radius * cos(pi / 6),
        centerY + radius * sin(pi / 6)); // Bottom-left
    path.lineTo(centerX + radius * cos(pi / 6),
        centerY + radius * sin(pi / 6)); // Bottom-right
    path.close();

    // Create downward triangle
    path.moveTo(centerX, centerY + radius); // Bottom point
    path.lineTo(centerX - radius * cos(pi / 6),
        centerY - radius * sin(pi / 6)); // Top-left
    path.lineTo(centerX + radius * cos(pi / 6),
        centerY - radius * sin(pi / 6)); // Top-right
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
