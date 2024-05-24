import 'package:flutter/material.dart';

class ProductItemSummary extends StatelessWidget {
  final String productName;
  final String quantity;

  const ProductItemSummary({
    Key? key,
    required this.productName,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Text(
              "Product Item",
              style: TextStyle(
                color: Colors.black87.withOpacity(0.5),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Quantity",
              style: TextStyle(
                color: Colors.black87.withOpacity(0.5),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: splitText(productName).map((line) {
                  return Text(
                    line,
                    style:  TextStyle(
                      color: Colors.black87.withOpacity(0.75),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                }).toList(),
              ),
            ),
            Text(
              quantity,
              style:  TextStyle(
                color: Colors.black87.withOpacity(0.75),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
      ],
    );
  }

  List<String> splitText(String text) {
    final words = text.split(' ');
    List<String> result = [];
    String currentLine = '';

    for (var word in words) {
      if (currentLine.split(' ').length == 3) {
        result.add(currentLine);
        currentLine = '';
      }
      currentLine += (currentLine.isEmpty ? '' : ' ') + word;
    }

    if (currentLine.isNotEmpty) {
      result.add(currentLine);
    }

    return result;
  }
}
