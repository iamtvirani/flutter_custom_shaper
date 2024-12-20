import 'package:custom_shape/custom_shapes.dart';
import 'package:custom_shape_example/model/shape_model.dart';
import 'package:flutter/material.dart';

final List<ShapeModel> basicShapeModels = [
  ShapeModel(clipper: TriangleClipper(), label: 'Triangle'),
  ShapeModel(clipper: CircleClipper(), label: 'Circle'),
  ShapeModel(clipper: SquareClipper(), label: 'Square'),
  ShapeModel(clipper: PentagonClipper(), label: 'Pentagon'),
  ShapeModel(clipper: ParallelogramClipper(), label: 'Parallelogram'),
  ShapeModel(clipper: HexagonClipper(), label: 'Hexagon'),
  ShapeModel(clipper: KiteClipper(), label: 'Kite'),
  ShapeModel(clipper: DiamondClipper(), label: 'Diamond'),
  ShapeModel(clipper: CrossClipper(), label: 'Cross'),
  ShapeModel(clipper: CrossClipper1(), label: 'Cross1'),
  ShapeModel(clipper: BezierCurveClipper(), label: 'Bezier'),
  ShapeModel(clipper: OctagonClipper(), label: 'Octagon'),
  ShapeModel(clipper: HouseClipper(), label: 'House'),
  ShapeModel(clipper: EllipseClipper(), label: 'Ellipse'),
  ShapeModel(
      clipper: RightAngleTriangleClipper(), label: 'Right Angle Triangle'),
  ShapeModel(clipper: LeftAngleTriangleClipper(), label: 'Left Angle Triangle'),
];
final List<ShapeModel> uniqueShapeModels = [
  ShapeModel(clipper: StarClipper(), label: 'Star'),
  ShapeModel(clipper: FillHexagramClipper(), label: 'Fill Hexagram'),
  ShapeModel(clipper: SunburstClipper(), label: 'Sun Burst'),
  ShapeModel(clipper: RadialSpikesClipper(), label: 'Redial spikes'),
  ShapeModel(clipper: HexagramClipper(), label: 'Hexagram'),
  ShapeModel(clipper: HeartClipper(), label: 'Heart'),
  ShapeModel(clipper: CloudClipper(), label: 'Cloud'),
  ShapeModel(clipper: CloudClipper1(), label: 'Cloud1'),
  ShapeModel(clipper: LightningClipper(), label: 'Lightning'),
  ShapeModel(clipper: CrescentClipper(), label: 'Crescent'),
  ShapeModel(clipper: ArrowLeftClipper(), label: 'Left Arrow'),
  ShapeModel(clipper: ArrowRightClipper(), label: 'Right Arrow'),
  ShapeModel(clipper: WaveClipper(), label: 'Wave'),
  ShapeModel(clipper: FullWaveClipper(), label: 'Wave'),
  ShapeModel(clipper: ShieldClipper(), label: 'Shield'),
  ShapeModel(clipper: ChevronClipper(), label: 'Chevron'),
  ShapeModel(clipper: LeafClipper(), label: 'Leaf'),
  ShapeModel(clipper: BrickWallClipper(), label: 'Brick Wall'),
  ShapeModel(clipper: FlowerClipper(), label: 'Flower Wall'),
];

List<Color> listColor = [
  Colors.lightGreen,
  Colors.pinkAccent,
  Colors.teal,
  Colors.purpleAccent,
  Colors.lightBlue,
  Colors.brown,
  Colors.deepOrange,
  Colors.indigo,
];
