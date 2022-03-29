import 'package:flutter/rendering.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width, h = size.height;
    final path = Path();

    path.lineTo(0, h - 50);
    // path.lineTo(w, h);
    path.quadraticBezierTo(w * 0.3, h + 70, w, h - 100);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
