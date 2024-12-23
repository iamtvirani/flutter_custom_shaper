import 'package:flutter/material.dart';
import 'dart:math' as math;

class RadialSpikesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = size.width / 2;
    final innerRadius = radius * 0.5; // Adjust inner radius for spikes
    final numSpikes = 12; // Number of spikes

    for (int i = 0; i < numSpikes; i++) {
      // Angles for outer and inner points
      final angleOuter = (i * 360 / numSpikes) * math.pi / 180;
      final angleInner = ((i + 0.5) * 360 / numSpikes) * math.pi / 180;

      // Points for outer spike tip and inner valley
      final xOuter = centerX + radius * math.cos(angleOuter);
      final yOuter = centerY + radius * math.sin(angleOuter);
      final xInner = centerX + innerRadius * math.cos(angleInner);
      final yInner = centerY + innerRadius * math.sin(angleInner);

      // Move to outer point and draw the spike
      if (i == 0) {
        path.moveTo(xOuter, yOuter); // Start the path
      } else {
        path.lineTo(xOuter, yOuter); // Line to outer spike tip
      }
      path.lineTo(xInner, yInner); // Line to inner valley
    }
    path.close(); // Close the path to complete the shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
