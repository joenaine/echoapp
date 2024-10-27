import 'dart:math';

import 'package:flutter/material.dart';

class TemperatureGauge extends StatelessWidget {
  final double temperature;

  const TemperatureGauge({super.key, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(30, 15),
      painter: GaugePainter(temperature: temperature),
    );
  }
}

class GaugePainter extends CustomPainter {
  final double temperature;

  GaugePainter({required this.temperature});

  @override
  void paint(Canvas canvas, Size size) {
    double startAngle = pi; // Start angle (180 degrees)
    double sweepAngle = pi; // Sweep angle (180 degrees)

    // Draw the gauge background
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 8;

    // Draw red section (left third)
    paint.color = Colors.red;
    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height), radius: size.width / 2),
      startAngle,
      sweepAngle / 3,
      true,
      paint,
    );

    // Draw yellow section (middle third)
    paint.color = Colors.yellow;
    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height), radius: size.width / 2),
      startAngle + (sweepAngle / 3),
      sweepAngle / 3,
      true,
      paint,
    );

    // Draw green section (right third)
    paint.color = Colors.green;
    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height), radius: size.width / 2),
      startAngle + (2 * sweepAngle / 3),
      sweepAngle / 3,
      true,
      paint,
    );

    // Map temperature from -1 to 1 to an angle between startAngle and startAngle + sweepAngle
    double normalizedTemperature =
        (temperature + 1) / 2; // Map -1 to 0 and 1 to 1
    double angle = startAngle + (sweepAngle * normalizedTemperature);

    // Draw the pointer
    final pointerPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3;

    final pointerLength = size.width / 2.6;
    final pointerEnd = Offset(
      size.width / 2 + pointerLength * cos(angle),
      size.height + pointerLength * sin(angle),
    );

    canvas.drawLine(
      Offset(size.width / 2, size.height),
      pointerEnd,
      pointerPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
