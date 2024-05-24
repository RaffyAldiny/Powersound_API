import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget targetScreen;

  const GridItem({
    super.key,
    required this.icon,
    required this.label,
    required this.targetScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          splashColor: Colors.blue.shade400.withOpacity(0.15),
          highlightColor: Colors.blueAccent.shade200.withOpacity(0.25),
          splashFactory: InkRipple.splashFactory,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => targetScreen),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade700.withOpacity(0.12),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Icon(
              icon,
              size: 34,
              color: Colors.black87.withOpacity(0.75),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(
              color: Colors.black87.withOpacity(0.85),
              letterSpacing: 0.5,
              fontSize: 12),
        ),
      ],
    );
  }
}
