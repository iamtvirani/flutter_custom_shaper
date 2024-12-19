import 'package:flutter/material.dart';
class ChevronClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, size.height * 0.25); // Top-left corner
    path.lineTo(size.width * 0.5, size.height * 0.5); // Middle peak
    path.lineTo(size.width, size.height * 0.25); // Top-right corner
    path.lineTo(size.width, size.height * 0.75); // Bottom-right indent
    path.lineTo(size.width * 0.5, size.height); // Bottom middle
    path.lineTo(0, size.height * 0.75); // Bottom-left indent
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
