import 'package:flutter/material.dart';

class CrossClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * 0.3, 0);
    path.lineTo(size.width * 0.7, 0);
    path.lineTo(size.width * 0.7, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.7);
    path.lineTo(size.width * 0.7, size.height * 0.7);
    path.lineTo(size.width * 0.7, size.height);
    path.lineTo(size.width * 0.3, size.height);
    path.lineTo(size.width * 0.3, size.height * 0.7);
    path.lineTo(0, size.height * 0.7);
    path.lineTo(0, size.height * 0.3);
    path.lineTo(size.width * 0.3, size.height * 0.3);
    path.lineTo(size.width * 0.3, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CrossClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final armWidth = size.width / 5;
    final armLength = size.height / 2;

    // Top arm
    path.moveTo(centerX - armWidth / 2, 0);
    path.lineTo(centerX + armWidth / 2, 0);
    path.lineTo(centerX + armWidth / 2, centerY - armWidth / 2);
    path.lineTo(centerX + armLength, centerY - armWidth / 2);
    path.lineTo(centerX + armLength, centerY + armWidth / 2);
    path.lineTo(centerX + armWidth / 2, centerY + armWidth / 2);
    path.lineTo(centerX + armWidth / 2, size.height);
    path.lineTo(centerX - armWidth / 2, size.height);
    path.lineTo(centerX - armWidth / 2, centerY + armWidth / 2);
    path.lineTo(centerX - armLength, centerY + armWidth / 2);
    path.lineTo(centerX - armLength, centerY - armWidth / 2);
    path.lineTo(centerX - armWidth / 2, centerY - armWidth / 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
