import 'package:flutter/material.dart';
import 'package:flutter_custom_shape_example/ui/basic_shapes.dart';
import 'package:flutter_custom_shape_example/ui/bubble_shape.dart';
import 'package:flutter_custom_shape_example/ui/unique_shapes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Custom Shapers'),
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
