import 'package:flutter/material.dart';

class HouseClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width / 2, 0) // Roof peak
      ..lineTo(size.width, size.height * 0.4) // Roof right
      ..lineTo(size.width, size.height) // Base right
      ..lineTo(0, size.height) // Base left
      ..lineTo(0, size.height * 0.4) // Roof left
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
