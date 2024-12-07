import 'package:dt_material/widgets/cards/dashed/dashed_border_painter.dart';
import 'package:flutter/material.dart';

class DashedBorderContainer extends StatelessWidget {
  final Widget child;
  DashedBorderContainer({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: const EdgeInsets.all(20),
      child: Center(
        child: CustomPaint(
          painter: DashedBorderPainter(color: Colors.black),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
