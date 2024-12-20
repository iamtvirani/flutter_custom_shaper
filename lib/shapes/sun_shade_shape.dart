import 'package:flutter/material.dart';
import 'dart:math' as math;

class SunShadeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final outerRadius = size.width / 2;
    final innerRadius = size.width / 3;
    final numPoints = 20;

    for (int i = 0; i < numPoints; i++) {
      final angle = (i * 2 * math.pi) / numPoints; // Angle in radians
      final nextAngle =
          ((i + 1) * 2 * math.pi) / numPoints; // Next angle in radians
      final radius = i.isEven ? outerRadius : innerRadius;

      final x1 = centerX + radius * math.cos(angle);
      final y1 = centerY + radius * math.sin(angle);

      if (i == 0) {
        path.moveTo(x1 - 5, y1 - 15);
      } else {
        path.quadraticBezierTo(centerX, centerY, x1, y1);
      }
    }

    path.close(); // Complete the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
