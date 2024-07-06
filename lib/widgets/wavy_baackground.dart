import 'dart:math';
import 'package:flutter/material.dart';

class SineWavePainter extends CustomPainter {
  SineWavePainter();

  @override
  void paint(Canvas canvas, Size size) {
    const gradient = LinearGradient(
        colors: [Color(0xFFE6FFFA), Color(0xFFEBF4FF)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);
    final paint = Paint()
      ..shader = gradient
          .createShader(Rect.fromLTWH(0.0, 0.0, size.width, size.height))
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, size.height * 0.12);
    for (double i = 0; i <= size.width; i++) {
      double y = size.height * 0.12 + 30 * sin(i / size.width * 2 * pi);
      path.lineTo(i, y);
    }

    path.lineTo(size.width, size.height * 0.89);
    for (double i = size.width; i >= 0; i--) {
      double y = size.height * 0.89 + 30 * sin(i / size.width * 2 * pi);
      path.lineTo(i, y);
    }

    path.lineTo(0, size.height * 0.12);
    path.close();

    // Draw path
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class SineWaveBackground extends StatelessWidget {
  final double width;
  final double height;
  final SineWavePainter painter;

  const SineWaveBackground({
    Key? key,
    required this.width,
    required this.height,
    required this.painter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: painter,
      ),
    );
  }
}
