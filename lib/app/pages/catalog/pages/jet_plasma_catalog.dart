import 'package:flutter/material.dart';
import 'package:self_esteem/app/pages/catalog/widgets/catalog_image.dart';

class JetPlasmaCatalog extends StatelessWidget {
  const JetPlasmaCatalog({
    required this.perimeter,
    super.key,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return JetPlasmaView(perimeter: perimeter);
  }
}

class JetPlasmaView extends StatefulWidget {
  const JetPlasmaView({
    super.key,
    required this.perimeter,
  });

  final double perimeter;

  @override
  State<JetPlasmaView> createState() => _JetPlasmaViewState();
}

class _JetPlasmaViewState extends State<JetPlasmaView> {
  String botoxName = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: widget.perimeter * 0.015),
          SizedBox(
            width: widget.perimeter * 0.11,
            child: Text(
              "Jato de plasma",
              style: TextStyle(
                fontSize: widget.perimeter * 0.015,
                fontWeight: FontWeight.w300,
                fontFamily: "Montserrat",
              ),
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
              "O jato de plasma é uma tecnologia avançada e não invasiva que oferece uma série de benefícios para a pele, sendo uma excelente opção para tratar diferentes condições estéticas de forma eficaz e segura.",
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
                "name": "Melanoses",
                "description":
                    "O jato de plasma é eficaz no tratamento de melanoses, ajudando a reduzir e clarear manchas escuras na pele, proporcionando um tom mais uniforme e luminoso."
              },
              {
                "name": "Pingentes",
                "description":
                    "Para a remoção de pingentes cutâneos, o jato de plasma é uma solução eficiente e precisa, eliminando essas pequenas protuberâncias de forma rápida e sem deixar cicatrizes."
              },
              {
                "name": "Xantelasma",
                "description":
                    "O jato de plasma também é indicado para tratar xantelasma, que são depósitos de gordura na região das pálpebras, proporcionando uma aparência mais uniforme e esteticamente agradável."
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
