import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFA915F9)
      ..style = PaintingStyle.fill;
    final path = Path()
      ..moveTo(size.width * 0.998, size.height * 0.458)
      ..cubicTo(size.width * 0.905, size.height * 0.285, size.width * 0.539, size.height * 0.012, size.width * 0.343,
          size.height * 0.025)
      ..cubicTo(size.width * 0.245, size.height * 0.032, size.width * 0.084, size.height * 0.191, size.width * 0.05,
          size.height * 0.283)
      ..cubicTo(size.width * 0.003, size.height * 0.414, size.width * 0.054, size.height * 0.686, size.width * 0.128,
          size.height * 0.834)
      ..cubicTo(size.width * 0.159, size.height * 0.884, size.width * 0.265, size.height * 0.955, size.width * 0.323,
          size.height * 0.968)
      ..cubicTo(size.width * 0.447, size.height * 0.995, size.width * 0.722, size.height * 0.955, size.width * 0.824,
          size.height * 0.88)
      ..cubicTo(size.width * 0.899, size.height * 0.826, size.width * 0.974, size.height * 0.643, size.width * 0.997,
          size.height * 0.554)
      ..cubicTo(size.width * 1.003, size.height * 0.477, size.width * 1.009, size.height * 0.479, size.width * 0.998,
          size.height * 0.458)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
