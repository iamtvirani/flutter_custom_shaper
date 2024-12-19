import 'dart:math';

import 'package:flutter/material.dart';

class HexagramClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double width = size.width;
    double height = size.height;
    double radius = width / 2;

    // Calculate the points for the first triangle
    List<Offset> triangle1 = _getTrianglePoints(Offset(width / 2, height / 2), radius);

    // Calculate the points for the second triangle (rotated by 180 degrees)
    List<Offset> triangle2 = _getTrianglePoints(Offset(width / 2, height / 2), radius, rotate: true);

    // Add the triangles to the path
    path.addPolygon(triangle1, true);
    path.addPolygon(triangle2, true);

    return path;
  }

  // Function to get the points for an equilateral triangle
  List<Offset> _getTrianglePoints(Offset center, double radius, {bool rotate = false}) {
    double angleOffset = rotate ? pi : 0;
    List<Offset> points = [];
    for (int i = 0; i < 3; i++) {
      double angle = (i * 2 * pi / 3) + angleOffset;
      points.add(Offset(center.dx + radius * cos(angle), center.dy + radius * sin(angle)));
    }
    return points;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}