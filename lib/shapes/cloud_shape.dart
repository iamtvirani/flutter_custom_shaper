import 'package:flutter/material.dart';

class CloudClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addOval(Rect.fromCircle(
      center: Offset(size.width * 0.25, size.height * 0.5),
      radius: size.width * 0.25,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(size.width * 0.75, size.height * 0.5),
      radius: size.width * 0.3,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(size.width * 0.5, size.height * 0.5),
      radius: size.width * 0.35,
    ));
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
