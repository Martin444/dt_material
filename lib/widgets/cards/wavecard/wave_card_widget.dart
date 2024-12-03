import 'package:dt_material/widgets/cards/wavecard/wave_painter.dart';
import 'package:flutter/material.dart';

class WaveCardWidget extends StatelessWidget {
  const WaveCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return CustomPaint(
          size: Size(constraints.maxWidth, constraints.maxHeight),
          painter: WavePainter(),
        );
      },
    );
  }
}
