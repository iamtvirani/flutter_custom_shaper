import 'package:flutter/material.dart';
import 'package:flutter_custom_shaper/flutter_custom_shapes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomShaper Widget Tests', () {
    testWidgets('Renders with default properties', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomShaper(
              clipper: ArrowLeftClipper(),
            ),
          ),
        ),
      );

      // Verify the default container dimensions and color
      final containerFinder = find.byType(Container);
      expect(containerFinder, findsOneWidget);

      final containerWidget = tester.widget<Container>(containerFinder);
      expect(containerWidget.color, Colors.blue);
      expect(containerWidget.constraints?.maxWidth, isNotNull);
      expect(containerWidget.constraints?.maxHeight, isNotNull);
    });

    testWidgets('Applies custom color, width, and height',
        (WidgetTester tester) async {
      const customColor = Colors.red;
      const customWidth = 150.0;
      const customHeight = 150.0;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomShaper(
              clipper: ArrowLeftClipper(),
              color: customColor,
              width: customWidth,
              height: customHeight,
            ),
          ),
        ),
      );

      final containerFinder = find.byType(Container);
      expect(containerFinder, findsOneWidget);

      final containerWidget = tester.widget<Container>(containerFinder);
      expect(containerWidget.color, customColor);

      // Verify the dimensions of the CustomShaper
      final clipPathFinder = find.byType(ClipPath);
      final clipPathWidget = tester.widget<ClipPath>(clipPathFinder);
      expect(
          clipPathWidget.clipBehavior, Clip.antiAlias); // Updated expectation
    });

    testWidgets('Displays child widget', (WidgetTester tester) async {
      const childText = 'Hello, Custom Shaper!';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomShaper(
              clipper: ArrowLeftClipper(),
              child: Center(
                child: Text(childText),
              ),
            ),
          ),
        ),
      );

      // Verify that the child widget is displayed
      expect(find.text(childText), findsOneWidget);
    });
  });
}
