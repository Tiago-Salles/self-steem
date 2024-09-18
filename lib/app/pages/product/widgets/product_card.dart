import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.name,
    required this.duration,
    required this.price,
    required this.message,
    required this.whatIsInclude,
    required this.perimeter,
    super.key,
  });

  final String name;
  final String duration;
  final String price;
  final String message;
  final List<String> whatIsInclude;
  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1 / 2,
      width: MediaQuery.of(context).size.height * 1 / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(perimeter * 0.009),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: perimeter * 0.009,
            width: perimeter * 0.009,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(price),
                    SizedBox(width: perimeter * 0.01),
                    Text(duration),
                  ],
                ),
                Column(
                  children: whatIsInclude
                      .map(
                        (e) => SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.check_outlined),
                              SizedBox(width: perimeter * 0.004),
                              Text(e),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
                const Spacer(),
                Text(message)
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: perimeter * 0.004, horizontal: perimeter * 0.004),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: perimeter * 0.002,
                ),
              ),
              child: const Text("Quero esse"),
            ),
          )
        ],
      ),
    );
  }
}
