import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle mainTitle = TextStyle(
    color: Colors.black87,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle subTitle = TextStyle(
    color: Colors.blueAccent,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static  ButtonStyle buttonStyle = ButtonStyle(
    padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(20, 10, 20, 10)),
    backgroundColor: MaterialStateProperty.all(Colors.blueAccent.shade700.withOpacity(0.86)),
    elevation: MaterialStateProperty.all(1.0),
  );

  static BoxDecoration roundCornerDecoration(Color color) => BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    color: color,
  );
}
