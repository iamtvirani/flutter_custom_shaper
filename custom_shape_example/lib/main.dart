import 'dart:math';

import 'package:custom_shape/custom_shapes.dart';
import 'package:custom_shape_example/helper/shape_list.dart';
import 'package:custom_shape_example/ui/basic_shapes.dart';
import 'package:custom_shape_example/ui/bubble_shape.dart';
import 'package:custom_shape_example/ui/unique_shapes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Shapes Example'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 20,
            children: [
              BubbleShapeScreen(),
              UniqueShapesScreen(),
              BasicShapesScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
