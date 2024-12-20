import 'package:flutter/material.dart';

class CloudClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double centerX = size.width * 0.5;
    double centerY = size.height * 0.5;

    path.addOval(Rect.fromCircle(
      center: Offset(size.width * 0.2, centerY),
      radius: size.width * 0.2,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(size.width * 0.8, centerY),
      radius: size.width * 0.2,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(centerX, centerY),
      radius: size.width * 0.3,
    ));

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CloudClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Adjust circle sizes and positions to fit within a square
    double centerX = size.width / 2;
    double centerY = size.height / 2;

    // Add circles for the cloud, ensuring they fit within the square
    path.addOval(Rect.fromCircle(
      center: Offset(centerX - size.width * 0.3, centerY), // Left circle
      radius: size.width * 0.2,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(centerX + size.width * 0.3, centerY), // Right circle
      radius: size.width * 0.2,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(centerX, centerY - size.height * 0.2), // Top circle
      radius: size.width * 0.25,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(centerX, centerY), // Central circle
      radius: size.width * 0.3,
    ));

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
