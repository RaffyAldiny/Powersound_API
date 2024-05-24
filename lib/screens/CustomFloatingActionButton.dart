import 'package:flutter/material.dart';

// Custom FloatingActionButton Widget
class CustomFloatingActionButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;
  final double size;
  final Color color;
  final Color iconColor;

  const CustomFloatingActionButton({
    super.key,
    required this.iconData,
    required this.onPressed,
    this.size = 30.0,
    this.color = Colors.blueAccent,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: color.withOpacity(0),
      elevation: 0.0,
      onPressed: onPressed,
      child: Icon(
        iconData,
        color: iconColor.withOpacity(0.85),
        size: size,
      ),
    );
  }
}

