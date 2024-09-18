import 'package:flutter/material.dart';
import 'package:self_esteem/app/pages/catalog/widgets/catalog_image.dart';

class BotoxCatalog extends StatelessWidget {
  const BotoxCatalog({
    required this.perimeter,
    super.key,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return BotoxMobileView(perimeter: perimeter);
  }
}

class BotoxMobileView extends StatefulWidget {
  const BotoxMobileView({
    super.key,
    required this.perimeter,
  });

  final double perimeter;

  @override
  State<BotoxMobileView> createState() => _BotoxMobileViewState();
}

class _BotoxMobileViewState extends State<BotoxMobileView> {
  String botoxName = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: widget.perimeter * 0.015),
          Text(
            "Botox",
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
              "Na Self Esteem, a aplicação de toxina botulínica (Botox) é um dos tratamentos mais procurados. Este procedimento minimamente invasivo suaviza rugas e linhas de expressão. Além da estética, o Botox trata hiperidrose, bruxismo e enxaquecas crônicas. O procedimento é rápido, com resultados visíveis em poucos dias. Nossa equipe de biomédicos e fisioterapeutas realiza a aplicação com precisão e cuidado, garantindo resultados naturais. Venha descobrir como o Botox pode melhorar sua aparência e qualidade de vida!",
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
                "name": "Rejuvenescimento",
                "description":
                    "O Botox suaviza rugas e linhas de expressão, proporcionando uma aparência mais jovem e revitalizada. É ideal para tratar áreas como testa, pés de galinha e linhas entre as sobrancelhas."
              },
              {
                "name": "Sudorose",
                "description":
                    "O Botox reduz a hiperidrose (suor excessivo) ao bloquear os sinais nervosos nas glândulas sudoríparas. É eficaz para tratar áreas como axilas, mãos e pés, proporcionando alívio duradouro."
              },
              {
                "name": "Nefertiti",
                "description":
                    "O Botox redefine o contorno do maxilar e pescoço, criando uma aparência mais firme e jovem. Este tratamento é inspirado no pescoço elegante da rainha Nefertiti, melhorando a definição do maxilar inferior."
              },
              {
                "name": "A.T.M",
                "description":
                    "O Botox alivia a dor e a tensão associadas aos distúrbios da articulação temporomandibular (A.T.M). Ele relaxa os músculos da mandíbula, reduzindo o bruxismo (ranger dos dentes) e proporcionando conforto."
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
