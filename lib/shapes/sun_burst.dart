import 'package:flutter/material.dart';
import 'dart:math' as math;

class SunburstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final outerRadius = size.width / 2;
    final innerRadius = size.width / 3;
    final numPoints = 20; // Total number of points (spikes)

    for (int i = 0; i < numPoints; i++) {
      final angle = i * (2 * math.pi / numPoints); // Current angle in radians
      final radius = i.isEven ? outerRadius : innerRadius; // Alternate radius

      final x = centerX + radius * math.cos(angle);
      final y = centerY + radius * math.sin(angle);

      if (i == 0) {
        path.moveTo(x, y); // Move to the first point
      } else {
        path.lineTo(x, y); // Draw a line to each subsequent point
      }
    }

    path.close(); // Close the path to complete the shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
