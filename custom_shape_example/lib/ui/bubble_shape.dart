import 'package:custom_shape/custom_shapes.dart';
import 'package:flutter/material.dart';

class BubbleShapeScreen extends StatelessWidget {
  const BubbleShapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Bubble Shape",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CustomShaper(
            height: 100,
            width: 100,
            clipper: BubbleClipper(),
            child: CustomPaint(
              painter: BubblePainter(),
            ),
          )
        ],
      ),
    );
  }
}
