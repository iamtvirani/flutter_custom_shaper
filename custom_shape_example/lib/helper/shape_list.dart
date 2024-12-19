import 'package:custom_shape/custom_shapes.dart';
import 'package:custom_shape_example/model/shape_model.dart';
import 'package:flutter/material.dart';

final List<ShapeModel> shapeModels = [
  ShapeModel(
    clipper: TriangleClipper(),
    color: Colors.blue,
    label: 'Triangle',
  ),
  ShapeModel(
    clipper: CircleClipper(),
    color: Colors.red,
    label: 'Circle',
  ),
  ShapeModel(
    clipper: PentagonClipper(),
    color: Colors.green,
    label: 'Pentagon',
  ),
  ShapeModel(
    clipper: HexagonClipper(),
    color: Colors.orange,
    label: 'Hexagon',
  ),
  ShapeModel(
    clipper: StarClipper(),
    color: Colors.purple,
    label: 'Star',
  ),
  ShapeModel(
    clipper: DiamondClipper(),
    color: Colors.cyan,
    label: 'Diamond',
  ),
  ShapeModel(
    clipper: HeartClipper(),
    color: Colors.pink,
    label: 'Heart',
  ),
  ShapeModel(
    clipper: ParallelogramClipper(),
    color: Colors.amber,
    label: 'Parallelogram',
  ),
  ShapeModel(
    clipper: ArrowClipper(),
    color: Colors.teal,
    label: 'Arrow',
  ),
  ShapeModel(
    clipper: WaveClipper(),
    color: Colors.indigo,
    label: 'Wave',
  ),
  ShapeModel(
    clipper: ShieldClipper(),
    color: Colors.lightBlue,
    label: 'Shield',
  ),
  ShapeModel(
    clipper: CloudClipper(),
    color: Colors.grey,
    label: 'Cloud',
  ),
  ShapeModel(
    clipper: ChevronClipper(),
    color: Colors.blueGrey,
    label: 'Chevron',
  ),
  ShapeModel(
    clipper: CrossClipper(),
    color: Colors.deepOrange,
    label: 'Cross',
  ),
  ShapeModel(
    clipper: BezierCurveClipper(),
    color: Colors.brown,
    label: 'Bezier',
  ),
  ShapeModel(
    clipper: OctagonClipper(),
    color: Colors.pinkAccent,
    label: 'Octagon',
  ),
  ShapeModel(
    clipper: EllipseClipper(),
    color: Colors.lightBlue,
    label: 'Ellipse',
  ),
  ShapeModel(
    clipper: KiteClipper(),
    color: Colors.yellow,
    label: 'Kite',
  ),
  ShapeModel(
    clipper: RightAngleTriangleClipper(),
    color: Colors.redAccent,
    label: 'Right Angle Triangle',
  ),
  ShapeModel(
    clipper: CrescentClipper(),
    color: Colors.purpleAccent,
    label: 'Crescent',
  ),
  ShapeModel(
    clipper: LeafClipper(),
    color: Colors.deepPurpleAccent,
    label: 'Leaf',
  ),
  ShapeModel(
    clipper: HouseClipper(),
    color: Colors.teal,
    label: 'House',
  ),
  ShapeModel(
    clipper: LightningClipper(),
    color: Colors.pink,
    label: 'Lightning',
  ),
  ShapeModel(
    clipper: BrickWallClipper(),
    color: Colors.lightGreen,
    label: 'Brick Wall',
  ),
  ShapeModel(
    clipper: HexagramClipper(),
    color: Colors.lightGreen,
    label: 'Hexagram',
  ),
];
