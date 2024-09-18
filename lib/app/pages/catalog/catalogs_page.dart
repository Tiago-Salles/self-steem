import 'package:flutter/material.dart';
import 'package:self_esteem/app/pages/catalog/pages/aesthetic_procedures_catalog.dart';
import 'package:self_esteem/app/pages/catalog/pages/our_objective_catolog.dart';
import 'package:self_esteem/app/pages/catalog/pages/who_we_are_catalog.dart';

class CatalogPages extends StatelessWidget {
  const CatalogPages({
    super.key,
    required this.perimeter,
    required this.scrollController,
  });

  final double perimeter;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WhoWeAreCatalog(perimeter: perimeter),
        OurObjectiveCatalog(perimeter: perimeter),
        AestheticProceduresCatalog(
          perimeter: perimeter,
          scrollController: scrollController,
        ),
      ],
    );
  }
}
