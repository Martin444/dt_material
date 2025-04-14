import 'dart:ui';

import 'package:flutter/material.dart';

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double dashGapLength;

  DashedBorderPainter({
    required this.color,
    this.strokeWidth = 2.0,
    this.dashLength = 5.0,
    this.dashGapLength = 5.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    Path path = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Offset.zero & size,
          const Radius.circular(10),
        ),
      );

    PathMetrics pathMetrics = path.computeMetrics();
    for (PathMetric pathMetric in pathMetrics) {
      double distance = 0.0;
      while (distance < pathMetric.length) {
        final double length = dashLength + dashGapLength;
        pathMetric
            .extractPath(
              distance,
              distance + dashLength,
              startWithMoveTo: true,
            )
            .let((segment) => canvas.drawPath(segment, paint));
        distance += length;
      }
    }
  }

  @override
  bool shouldRepaint(DashedBorderPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.dashLength != dashLength ||
        oldDelegate.dashGapLength != dashGapLength;
  }
}

extension on Path {
  void let(void Function(Path) fn) => fn(this);
}
