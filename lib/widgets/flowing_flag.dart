import 'package:flutter/material.dart';
import 'dart:math'; // for random wind direction

const CURVE_HEIGHT = 160.0;
const AVATAR_RADIUS = CURVE_HEIGHT * 0.28;
const AVATAR_DIAMETER = AVATAR_RADIUS * 2;

class FlowingFlag extends StatelessWidget {
  final Widget child;

  const FlowingFlag({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370.0,
      child: CustomPaint(
        painter: FlagPainter(child: child),
      ),
    );
  }
}

class FlagPainter extends CustomPainter {
  final Widget child;
  final double _flagPoleHeight = 50.0; // Adjust flag pole height

  FlagPainter({required this.child});

  @override
  void paint(Canvas canvas, Size size) {
    // Gradient for the flag
    const gradient = LinearGradient(
        colors: [Color(0xFFE6FFFA), Color(0xFFEBF4FF)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);

    // Create a Shader from the gradient
    final gradientPaint = Paint()
      ..shader = gradient
          .createShader(Rect.fromLTWH(0.0, 0.0, size.width, size.height))
      ..style = PaintingStyle.fill;

    // Flag path (adjust width as needed)
    final path = Path();
    path.moveTo(size.width * 0.1, _flagPoleHeight); // Start at top left of pole
    path.lineTo(size.width * 0.1, size.height); // Down left side
    path.quadraticBezierTo(
        size.width * 0.3,
        size.height * 0.7 + Random().nextDouble() * 30.0, // Wavy curve
        size.width * 0.8,
        size.height); // Down right side with random wave
    path.lineTo(
        size.width * 0.9, size.height * 0.6); // Up right corner with angle
    path.lineTo(size.width, size.height * 0.2); // Up to top right
    path.lineTo(size.width, _flagPoleHeight); // Down to top of pole
    path.close();

    // Paint the flag
    canvas.drawPath(path, gradientPaint);

    // Paint the flag pole
    final polePaint = Paint()
      ..color = Colors.brown
      ..style = PaintingStyle.fill;
    canvas.drawRect(
        Rect.fromLTWH(0.0, 0.0, size.width * 0.1, _flagPoleHeight), polePaint);

    canvas.drawPath(path, polePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
