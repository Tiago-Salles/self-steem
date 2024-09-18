import 'package:flutter/material.dart';
import 'package:self_esteem/app/pages/product/widgets/product_card.dart';

class ProductPage extends StatelessWidget {
  ProductPage({
    required this.perimeter,
    super.key,
  });

  final double perimeter;

  final List<String> _lightPlan = [
    "Desenvolvimento do site",
    "Consultoria financeira",
    "Consultoria estratégica",
  ];

  final List<String> _mediumPlan = [
    "Desenvolvimento do site",
    "Consultoria financeira",
    "Consultoria estratégica",
  ];

  final List<String> _hardPlan = [
    "Desenvolvimento do site",
    "Consultoria financeira",
    "Consultoria estratégica",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                {
                  "name": "Leve",
                  "duration": "3 meses",
                  "price": "30 €",
                  "message":
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
                  "whatIsInclude": _lightPlan,
                },
                {
                  "name": "Médio",
                  "duration": "5 meses",
                  "price": "50 €",
                  "message":
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
                  "whatIsInclude": _lightPlan + _mediumPlan,
                },
                {
                  "name": "Pesado",
                  "duration": "9 meses",
                  "price": "90 €",
                  "message":
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
                  "whatIsInclude": _lightPlan + _mediumPlan + _hardPlan,
                },
              ].map(
                (e) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: ProductCard(
                      name: e["name"] as String,
                      duration: e["duration"] as String,
                      price: e["price"] as String,
                      message: e["message"] as String,
                      whatIsInclude: e["whatIsInclude"] as List<String>,
                      perimeter: perimeter,
                    ),
                  );
                },
              ).toList(),
            ),
          )
        ],
      ),
    );
  }
}
