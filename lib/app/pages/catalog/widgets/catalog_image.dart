import 'package:flutter/material.dart';

class CatalogImage extends StatelessWidget {
  const CatalogImage({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: const Placeholder(),
    );
  }
}
