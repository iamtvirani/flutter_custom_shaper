import 'package:flutter/material.dart';
import 'dart:ui' as ui;

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
  void paint(Canvas canvas, Size canvasSize) {
    // Use a default size if none is provided
    final bubbleSize = size ?? Size(100, 100); // Default size is (100, 100)

    final center = Offset(bubbleSize.width / 2, bubbleSize.height / 2);
    final radius = bubbleSize.width * 0.4; // Dynamic radius based on bubbleSize

    // Outer gradient
    final outerGradientPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          outerColor1 ?? Colors.blue.withOpacity(0.4),
          outerColor2 ?? Colors.purple.withOpacity(0.3),
          Colors.transparent,
        ],
        stops: [0.6, 0.8, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius));
    canvas.drawCircle(center, radius, outerGradientPaint);

    // Inner reflection gradient
    final innerGradientPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          innerColor ?? Colors.white.withOpacity(0.5),
          Colors.transparent,
        ],
        stops: [0.3, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius * 0.8));
    canvas.drawCircle(center, radius * 0.8, innerGradientPaint);

    // Top-left highlight
    final highlightPaint = Paint()
      ..color = innerColor ?? Colors.white.withOpacity(0.8);
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
          outerColor2 ?? Colors.purple.withOpacity(0.6),
          outerColor1 ?? Colors.blue.withOpacity(0.3),
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
