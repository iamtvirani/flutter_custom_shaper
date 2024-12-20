import 'dart:math';

import 'package:flutter/material.dart';

class FillHexagramClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double width = size.width;
    double height = size.height;
    double radius = width / 2;

    List<Offset> triangle1 =
        _getTrianglePoints(Offset(width / 2, height / 2), radius);

    List<Offset> triangle2 =
        _getTrianglePoints(Offset(width / 2, height / 2), radius, rotate: true);

    path.addPolygon(triangle1, true);
    path.addPolygon(triangle2, true);

    return path;
  }

  List<Offset> _getTrianglePoints(Offset center, double radius,
      {bool rotate = false}) {
    double angleOffset = rotate ? pi : 0;
    List<Offset> points = [];
    for (int i = 0; i < 3; i++) {
      double angle = (i * 2 * pi / 3) + angleOffset;
      points.add(Offset(
          center.dx + radius * cos(angle), center.dy + radius * sin(angle)));
    }
    return points;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
