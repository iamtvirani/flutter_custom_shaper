import 'package:flutter/material.dart';

class HeartClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(size.width / 2, size.height * 0.75);

    path.cubicTo(
      size.width * 0.05, size.height * 0.5,
      size.width * 0.15, size.height * 0.1,
      size.width / 2, size.height * 0.35,
    );

    path.cubicTo(
      size.width * 0.85, size.height * 0.1,
      size.width * 0.95, size.height * 0.5,
      size.width / 2, size.height * 0.75,
    );

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
