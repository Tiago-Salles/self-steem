import 'package:flutter/material.dart';
import 'package:self_esteem/app/pages/catalog/widgets/catalog_image.dart';

class BiostimulatorsCatalog extends StatelessWidget {
  const BiostimulatorsCatalog({
    required this.perimeter,
    super.key,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return BiostimulatorsView(perimeter: perimeter);
  }
}

class BiostimulatorsView extends StatefulWidget {
  const BiostimulatorsView({
    super.key,
    required this.perimeter,
  });

  final double perimeter;

  @override
  State<BiostimulatorsView> createState() => _BiostimulatorsViewState();
}

class _BiostimulatorsViewState extends State<BiostimulatorsView> {
  String botoxName = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: widget.perimeter * 0.015),
          Text(
            "Bioestimuladores",
            style: TextStyle(
              fontSize: widget.perimeter * 0.015,
              fontWeight: FontWeight.w300,
              fontFamily: "Montserrat",
            ),
          ),
          SizedBox(height: widget.perimeter * 0.01),
          SizedBox(
            width: (MediaQuery.of(context).size.width * 3 / 4),
            child: Image.asset(
              "assets/images/botox.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: widget.perimeter * 0.01),
          SizedBox(
            width: MediaQuery.of(context).size.width * 3 / 4,
            child: Text(
              "O microagulhamento é uma técnica que utiliza microagulhas para estimular a produção de colágeno e regeneração da pele, sendo um procedimento versátil com diversos benefícios estéticos.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: widget.perimeter * 0.008,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Column(
            children: [
              {
                "name": "Mesobotox",
                "description":
                    "O mesobotox é uma técnica de microagulhamento que combina microinjeções de toxina botulínica com o objetivo de reduzir rugas finas, melhorar a textura da pele e proporcionar um aspecto mais rejuvenescido."
              },
              {
                "name": "Rejuvenescimento",
                "description":
                    "O microagulhamento é eficaz para o rejuvenescimento da pele, promovendo a regeneração celular, suavizando rugas e linhas de expressão, e melhorando a firmeza e a elasticidade da pele."
              },
              {
                "name": "Cicatriz de acne",
                "description":
                    "Para tratar cicatrizes de acne, o microagulhamento é uma opção eficiente que estimula a produção de colágeno e ajuda a suavizar a textura da pele, reduzindo a aparência das cicatrizes."
              },
              {
                "name": "Poros",
                "description":
                    "O microagulhamento também pode ajudar a minimizar a aparência de poros dilatados, estimulando a renovação celular e melhorando a textura da pele, resultando em uma pele mais uniforme e refinada."
              },
            ]
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      setState(() {
                        if (botoxName == e["name"]) {
                          botoxName = "";
                        } else {
                          botoxName = e["name"] as String;
                        }
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          width: widget.perimeter * 0.12,
                          margin: EdgeInsets.only(top: widget.perimeter * 0.01),
                          padding: EdgeInsets.all(widget.perimeter * 0.004),
                          decoration: BoxDecoration(
                            color: const Color(0XFF9d7052),
                            borderRadius:
                                BorderRadius.circular(widget.perimeter * 0.002),
                          ),
                          child: Column(
                            children: [
                              Text(
                                e["name"] as String,
                                style: TextStyle(
                                  fontSize: widget.perimeter * 0.008,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0XFFe3e3e3),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: widget.perimeter * 0.002),
                        botoxName == e["name"]
                            ? Container(
                                width: widget.perimeter * 0.12,
                                padding:
                                    EdgeInsets.all(widget.perimeter * 0.003),
                                child: Text(
                                  e["description"] as String,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: widget.perimeter * 0.008,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink()
                      ],
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}

class BotoxWebView extends StatelessWidget {
  const BotoxWebView({
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
