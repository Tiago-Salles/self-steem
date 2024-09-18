import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:self_esteem/app/pages/catalog/widgets/catalog_image.dart';

class InformationCatalog extends StatelessWidget {
  const InformationCatalog({
    required this.perimeter,
    super.key,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return InformationMobileView(perimeter: perimeter);
  }
}

class InformationMobileView extends StatelessWidget {
  const InformationMobileView({
    super.key,
    required this.perimeter,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: perimeter * 0.015),
          SizedBox(
            width: perimeter * 0.12,
            child: Text(
              "As etapas de um procedimento",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: perimeter * 0.015,
                fontWeight: FontWeight.w300,
                fontFamily: "Montserrat",
              ),
            ),
          ),
          SizedBox(height: perimeter * 0.01),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                {
                  "stepName": "Avaliação",
                  "imagePath": "assets/images/information.jpg",
                  "proceduralInformation":
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                },
                {
                  "stepName": "Realização do procedimento",
                  "imagePath": "assets/images/execute_procedure.jpg",
                  "proceduralInformation":
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                },
                {
                  "stepName": "Retorno do procedimento",
                  "imagePath": "assets/images/procedure_return.jpg",
                  "proceduralInformation":
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                },
                {
                  "stepName": "Pós-retorno",
                  "imagePath": "assets/images/pos_procedure.jpg",
                  "proceduralInformation":
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                },
              ]
                  .map(
                    (e) => ProcedureStepCard(
                      perimeter: perimeter,
                      stepName: e["stepName"] as String,
                      imagePath: e["imagePath"] as String,
                      proceduralInformation:
                          e["proceduralInformation"] as String,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ProcedureStepCard extends StatelessWidget {
  const ProcedureStepCard({
    super.key,
    required this.perimeter,
    required this.stepName,
    required this.imagePath,
    required this.proceduralInformation,
  });

  final double perimeter;
  final String stepName;
  final String imagePath;
  final String proceduralInformation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: perimeter * 0.01,
        right: perimeter * 0.01,
      ),
      child: Column(
        children: [
          SizedBox(
            width: (MediaQuery.of(context).size.width * 3 / 4),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: perimeter * 0.01),
          SizedBox(
            width: perimeter * 0.11,
            child: Text(
              stepName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: perimeter * 0.01,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: perimeter * 0.01),
          SizedBox(
            width: MediaQuery.of(context).size.width * 3 / 4,
            child: Text(
              proceduralInformation,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: perimeter * 0.008,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InformationWebView extends StatelessWidget {
  const InformationWebView({
    super.key,
    required this.perimeter,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 1 / 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width * 1 / 4) -
                      perimeter * 0.008,
                  child: Text(
                    "Seu site 'e sua empresa de portas abertas, receba seus clientes bem!",
                    style: TextStyle(
                      fontSize: perimeter * 0.008,
                    ),
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width * 1 / 4) -
                      perimeter * 0.008,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.",
                    style: TextStyle(
                      fontSize: perimeter * 0.005,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width * 3 / 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 3 / 4) -
                      perimeter * 0.008,
                  child: const CatalogImage(image: ""),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
