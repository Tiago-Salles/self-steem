import 'package:flutter/material.dart';

class WhoWeAreCatalog extends StatelessWidget {
  const WhoWeAreCatalog({
    required this.perimeter,
    super.key,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return MobileView(perimeter: perimeter);
  }
}

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
    required this.perimeter,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: perimeter * 0.015),
          Text(
            "Quem somos",
            style: TextStyle(
              fontSize: perimeter * 0.015,
              fontWeight: FontWeight.w300,
              fontFamily: "Montserrat",
            ),
          ),
          SizedBox(height: perimeter * 0.01),
          SizedBox(
            width: (MediaQuery.of(context).size.width * 3 / 4),
            child: Image.asset(
              "assets/images/team.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: perimeter * 0.01),
          SizedBox(
            width: MediaQuery.of(context).size.width * 3 / 4,
            child: Text(
              "Bem-vinda à Self Esteem, sua clínica de estética especializada em tratamentos injetáveis! Nossa equipe multidisciplinar, altamente qualificada, está aqui para cuidar de você com o que há de melhor no mercado. Estamos sempre atualizadas para garantir que você receba tratamentos seguros, modernos e eficazes.",
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

class WebView extends StatelessWidget {
  const WebView({
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
            width: (MediaQuery.of(context).size.width * 3 / 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 3 / 4) -
                      perimeter * 0.008,
                  child: Text(
                    "Quem somos",
                    style: TextStyle(
                      fontSize: perimeter * 0.015,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: perimeter * 0.01),
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 3 / 4) -
                      perimeter * 0.008,
                  child: Image.asset(
                    "assets/images/team.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 1 / 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width * 1 / 4) -
                      perimeter * 0.005,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: perimeter * 0.008,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
