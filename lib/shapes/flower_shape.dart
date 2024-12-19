import 'package:flutter/material.dart';

class BrickWallClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double brickWidth = size.width / 5;
    double brickHeight = size.height / 5;
    int rows = 5;
    int columns = 5;
    bool isOffsetRow = false;

    for (int row = 0; row < rows; row++) {
      for (int column = 0; column < columns; column++) {
        double xOffset = isOffsetRow && column != 0 ? brickWidth / 2 : 0;
        path.addRect(Rect.fromLTWH(
          column * brickWidth + xOffset,
          row * brickHeight,
          brickWidth,
          brickHeight,
        ));
      }
      isOffsetRow = !isOffsetRow;
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
