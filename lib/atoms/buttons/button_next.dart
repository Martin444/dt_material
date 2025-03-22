import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonNext extends StatefulWidget {
  //parametros
  String title;
  VoidCallback onPressed;
  bool load;
  bool disabled = false;

  ButtonNext({
    super.key,
    required this.title,
    required this.onPressed,
    required this.load,
    this.disabled = false,
  });

  @override
  State<ButtonNext> createState() => _ButtonNextState();
}

class _ButtonNextState extends State<ButtonNext> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
    reverseDuration: const Duration(milliseconds: 400),
    animationBehavior: AnimationBehavior.preserve,
  )
    // ..reverse()
    ..repeat(reverse: false);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeigth = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomPaint(
          painter: CirclePainter(),
          child: Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, body) {
                return Container(
                    width: screenWidth / 4.5 - _controller.value.clamp(0, 35) * 10,
                    height: screenHeigth / 4.5 - _controller.value.clamp(0, 35) * 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(
                        _controller.value.clamp(0.0, 0.1),
                      ),
                    ));
              },
            ),
          ),
        ),
        CustomPaint(
          painter: CirclePainter(),
          child: Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, body) {
                return Container(
                    width: screenWidth / 5.4 - _controller.value.remainder(15) * 10,
                    height: screenHeigth / 5.4 - _controller.value.remainder(15) * 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(
                        _controller.value.clamp(0.1, 0.3),
                      ),
                    ));
              },
            ),
          ),
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              widget.onPressed();
            },
            child: Container(
              height: MediaQuery.of(context).size.width / 7,
              width: MediaQuery.of(context).size.width / 7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: DTColors.iconColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 4;
    final paint = Paint()..color = Colors.transparent;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
