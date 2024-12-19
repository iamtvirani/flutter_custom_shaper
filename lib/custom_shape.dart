import 'package:flutter/material.dart';

class CustomShaper extends StatelessWidget {
  final CustomClipper<Path> clipper;
  final Widget? child;
  final Color color;
  final double width;
  final double height;

  const CustomShaper({
    super.key,
    required this.clipper,
    this.child,
    this.color = Colors.blue,
    this.width = 200,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        width: width,
        height: height,
        color: color,
        child: child,
      ),
    );
  }
}
