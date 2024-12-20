import 'package:flutter/material.dart';

class FlowerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final petalRadius = size.width / 3;

    // Top petal
    path.moveTo(centerX, centerY - petalRadius);
    path.quadraticBezierTo(
        centerX - petalRadius, centerY - petalRadius, centerX, centerY);
    path.quadraticBezierTo(centerX + petalRadius, centerY - petalRadius,
        centerX, centerY - petalRadius);

    // Right petal
    path.moveTo(centerX + petalRadius, centerY);
    path.quadraticBezierTo(
        centerX + petalRadius, centerY - petalRadius, centerX, centerY);
    path.quadraticBezierTo(centerX + petalRadius, centerY + petalRadius,
        centerX + petalRadius, centerY);

    // Bottom petal
    path.moveTo(centerX, centerY + petalRadius);
    path.quadraticBezierTo(
        centerX + petalRadius, centerY + petalRadius, centerX, centerY);
    path.quadraticBezierTo(centerX - petalRadius, centerY + petalRadius,
        centerX, centerY + petalRadius);

    // Left petal
    path.moveTo(centerX - petalRadius, centerY);
    path.quadraticBezierTo(
        centerX - petalRadius, centerY + petalRadius, centerX, centerY);
    path.quadraticBezierTo(centerX - petalRadius, centerY - petalRadius,
        centerX - petalRadius, centerY);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
