import 'package:flutter/material.dart';
class CardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //declared the variavles
    double h = size.height;
    double w = size.width;
    // created a path
    var p = Path()

    /// move to top left corner
      ..moveTo(0, 0)

    /// line to 70% of width
      ..lineTo(w * .70, 0)
//
    ///make  arc

      ..arcToPoint(Offset(w * .7, h * .3), radius:const  Radius.circular(0), clockwise: false)
    /// continue making line
      ..lineTo(w, h * .3)
      ..lineTo(w, h)
      ..lineTo(0, h)
      ..close();
    return p;


  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}