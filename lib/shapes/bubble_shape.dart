import 'dart:ui';

import 'package:flutter/material.dart';

class BubbleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..addOval(Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2,
      ));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BubblePainter extends CustomPainter {
  final Color? outerColor1;
  final Color? outerColor2;
  final Color? innerColor;
  final Size? size; // Make size optional

  BubblePainter({
    this.outerColor1,
    this.outerColor2,
    this.innerColor,
    this.size, // Size is now optional
  });

  @override
  void paint(Canvas canvas, Size size) {
    final bubbleSize = size;

    final center = Offset(bubbleSize.width / 2, bubbleSize.height / 2);
    final radius = bubbleSize.width * 0.4; // Dynamic radius based on bubbleSize

    // Outer gradient
    final outerGradientPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          outerColor1 ?? Colors.blue.shade400,
          outerColor2 ?? Colors.purple.shade300.withValues(blue: Colors.blue.a, colorSpace: ColorSpace.displayP3),
          Colors.transparent,
        ],
        stops: [0.6, 0.8, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius));
    canvas.drawCircle(center, radius, outerGradientPaint);

    // Inner reflection gradient
    final innerGradientPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          innerColor ?? Colors.white.withValues(colorSpace: ColorSpace.displayP3),
          Colors.transparent,
        ],
        stops: [0.3, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius * 0.8));
    canvas.drawCircle(center, radius * 0.8, innerGradientPaint);

    // Top-left highlight
    final highlightPaint = Paint()..color = innerColor ?? Colors.white;
    final highlightRadius = radius * 0.15; // Dynamic highlight size
    canvas.drawCircle(
      Offset(bubbleSize.width * 0.35, bubbleSize.height * 0.35),
      highlightRadius,
      highlightPaint,
    );

    // Bottom glow
    final bottomGlowRadius = radius * 0.3; // Dynamic bottom glow size
    final bottomGlowGradientPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          outerColor2 ?? Colors.purple.shade600,
          outerColor1 ?? Colors.blue.shade300,
          Colors.transparent,
        ],
        stops: [0.3, 0.6, 1.0],
      ).createShader(Rect.fromCircle(
        center: Offset(bubbleSize.width * 0.6, bubbleSize.height * 0.8),
        radius: bottomGlowRadius,
      ));
    canvas.drawCircle(
      Offset(bubbleSize.width * 0.6, bubbleSize.height * 0.8),
      bottomGlowRadius,
      bottomGlowGradientPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
