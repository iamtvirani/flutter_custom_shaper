import 'package:flutter/material.dart';

class ShapeModel {
  final CustomClipper<Path> clipper;
  final String label;

  ShapeModel({required this.clipper, required this.label});
}
