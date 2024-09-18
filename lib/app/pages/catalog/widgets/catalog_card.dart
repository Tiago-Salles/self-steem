import 'package:flutter/material.dart';

class CatalogCard extends StatelessWidget {
  const CatalogCard({
    required this.message,
    required this.image,
    required this.perimeter,
    super.key,
  });

  final String message;
  final String image;
  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: perimeter * 0.02,
      width: perimeter * 0.015,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: perimeter * 0.01,
            width: perimeter * 0.009,
            child: Placeholder(),
          ),
          Text(message)
        ],
      ),
    );
  }
}
