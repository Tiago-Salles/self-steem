import 'package:flutter/material.dart';
import 'package:self_esteem/app/pages/catalog/widgets/catalog_image.dart';

class EnzyemesCatalog extends StatelessWidget {
  const EnzyemesCatalog({
    required this.perimeter,
    super.key,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return EnzyemesView(perimeter: perimeter);
  }
}

class EnzyemesView extends StatefulWidget {
  const EnzyemesView({
    super.key,
    required this.perimeter,
  });

  final double perimeter;

  @override
  State<EnzyemesView> createState() => _EnzyemesViewState();
}

class _EnzyemesViewState extends State<EnzyemesView> {
  String botoxName = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: widget.perimeter * 0.015),
          Text(
            "Enzimas",
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
              "As enzimas são substâncias naturais que oferecem uma série de benefícios, proporcionando uma abordagem segura e eficiente para diversos problemas estéticos.",
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
                "name": "Gordura (local)",
                "description":
                    "As enzimas são utilizadas para reduzir a gordura localizada, especialmente em áreas como abdômen, flancos, coxas e braços. O tratamento é não invasivo e ajuda a esculpir o corpo de forma mais definida."
              },
              {
                "name": "Flacidez",
                "description":
                    "Para combater a flacidez da pele, as enzimas são aplicadas com precisão, estimulando a produção de colágeno e elastina. Isso resulta em uma pele mais firme e tonificada, especialmente em áreas como rosto, pescoço e braços."
              },
              {
                "name": "Intramuscular",
                "description":
                    "As enzimas intramusculares são utilizadas para relaxar os músculos e aliviar a tensão, proporcionando alívio para dores musculares e melhorando a mobilidade. É um tratamento eficaz para atletas e pessoas que sofrem de dores crônicas."
              },
              {
                "name": "Hiperpigmentação/Melasma",
                "description":
                    "No tratamento de hiperpigmentação e melasma, as enzimas ajudam a reduzir a produção excessiva de melanina, clareando manchas escuras e uniformizando o tom da pele. O resultado é uma pele mais luminosa e uniforme."
              },
              {
                "name": "Celulite",
                "description":
                    "As enzimas são eficazes na redução da celulite, agindo diretamente sobre as células de gordura e melhorando a circulação sanguínea na região afetada. Isso resulta em uma pele mais lisa e com aspecto menos ondulado."
              },
              {
                "name": "Papada",
                "description":
                    "Para eliminar a papada, as enzimas são aplicadas de forma precisa para quebrar as células de gordura nessa área, promovendo a redução do volume e proporcionando um contorno mais definido no pescoço e queixo."
              },
              {
                "name": "Skinbooster",
                "description":
                    "O skinbooster com enzimas é um tratamento revitalizante que melhora a hidratação e a elasticidade da pele, promovendo um aspecto mais jovem e saudável. É especialmente indicado para áreas como rosto, mãos e colo, rejuvenescendo a aparência de forma natural."
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
