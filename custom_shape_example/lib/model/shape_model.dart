import 'package:custom_shape/custom_shape.dart';
import 'package:flutter/material.dart';

// Model for holding the shape and color data
class ShapeModel {
  final CustomClipper<Path> clipper;
  final Color color;
  final String label;

  ShapeModel({required this.clipper, required this.color, required this.label});
}
