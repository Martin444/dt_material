import 'package:dt_material/molecules/cards/dashed/dashed_border_painter.dart';
import 'package:flutter/material.dart';

class DashedBorderContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const DashedBorderContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.padding,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 150,
      height: height ?? 150,
      padding: padding ?? const EdgeInsets.all(20),
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
