import 'dart:math';

import 'package:custom_shape/custom_shapes.dart';
import 'package:custom_shape_example/helper/shape_list.dart';
import 'package:flutter/material.dart';

class UniqueShapesScreen extends StatelessWidget {
  const UniqueShapesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "Unique Shapes",
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
          itemCount: uniqueShapeModels.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  child: CustomShaper(
                    clipper: uniqueShapeModels[index].clipper,
                    color: listColor[Random().nextInt(listColor.length)],
                    width: 70,
                    height: 70,
                  ),
                ),
                Text(
                  uniqueShapeModels[index].label,
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
