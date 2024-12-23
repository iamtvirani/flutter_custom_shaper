import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_custom_shape_example/helper/shape_list.dart';
import 'package:flutter_custom_shaper/flutter_custom_shapes.dart';

class BasicShapesScreen extends StatelessWidget {
  const BasicShapesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "Basic Shapes",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: basicShapeModels.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  child: CustomShaper(
                    clipper: basicShapeModels[index].clipper,
                    color: listColor[Random().nextInt(listColor.length)],
                    width: 70,
                    height: 70,
                  ),
                ),
                Text(
                  basicShapeModels[index].label,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
