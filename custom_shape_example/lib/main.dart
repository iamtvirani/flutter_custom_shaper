import 'package:custom_shape/custom_shapes.dart';
import 'package:custom_shape_example/helper/shape_list.dart';
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
          child: Center(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Number of columns in the grid
                crossAxisSpacing: 10, // Horizontal space between items
                mainAxisSpacing: 10, // Vertical space between items
              ),
              itemCount: shapeModels.length, // Set itemCount to match the number of shapes and colors
              itemBuilder: (context, index) {


                // Make sure the number of items is equal to the number of colors
                return Column(
                  children: [
                    Expanded(
                      child: CustomShaper(
                        clipper: shapeModels[index].clipper,
                        color: shapeModels[index].color,
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Text(
                      shapeModels[index].label,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
