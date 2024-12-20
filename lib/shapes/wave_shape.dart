import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height - 20,
    );
    path.quadraticBezierTo(
      size.width * 3 / 4,
      size.height - 40,
      size.width,
      size.height - 20,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class FullWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Start at the top-left corner
    path.lineTo(0, size.height * 0.5);

    // Draw the first half-wave
    path.quadraticBezierTo(
      size.width * 0.25, size.height * 0.25, // Control point
      size.width * 0.5, size.height * 0.5, // End point
    );

    // Draw the second half-wave
    path.quadraticBezierTo(
      size.width * 0.75, size.height * 0.75, // Control point
      size.width, size.height * 0.5, // End point
    );

    // Complete the shape
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
