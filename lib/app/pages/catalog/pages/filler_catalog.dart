import 'package:flutter/material.dart';
import 'package:self_esteem/app/pages/catalog/widgets/catalog_image.dart';

class FillerCatalog extends StatelessWidget {
  const FillerCatalog({
    required this.perimeter,
    super.key,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return FillerMobileView(perimeter: perimeter);
  }
}

class FillerMobileView extends StatefulWidget {
  const FillerMobileView({
    super.key,
    required this.perimeter,
  });

  final double perimeter;

  @override
  State<FillerMobileView> createState() => _FillerMobileViewState();
}

class _FillerMobileViewState extends State<FillerMobileView> {
  String fillerName = "";

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
              "Preenchimento",
              textAlign: TextAlign.center,
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
              "assets/images/lip_filler.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: widget.perimeter * 0.01),
          SizedBox(height: widget.perimeter * 0.01),
          SizedBox(
            width: MediaQuery.of(context).size.width * 3 / 4,
            child: Text(
              "Na Self Esteem, oferecemos preenchimentos faciais para restaurar volume e contorno, proporcionando uma aparência rejuvenescida e harmônica. Nossa equipe especializada garante resultados naturais e satisfatórios.",
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
                "name": "Labial",
                "description":
                    "Aumenta o volume e define os lábios, melhorando a simetria e proporcionando um aspecto mais pleno e atraente."
              },
              {
                "name": "Olheira",
                "description":
                    "O preenchimento de olheiras minimiza as depressões e sombras sob os olhos, resultando em uma aparência mais descansada e revitalizada."
              },
              {
                "name": "Malar",
                "description":
                    "O preenchimento malar realça as maçãs do rosto, proporcionando um aspecto mais jovem e definido à face."
              },
              {
                "name": "Mandíbula",
                "description":
                    "Este preenchimento redefine a linha da mandíbula, criando um contorno mais nítido e elegante, melhorando a simetria facial."
              },
              {
                "name": "Mento (queixo)",
                "description":
                    "O preenchimento de mento (queixo) ajusta a projeção e o equilíbrio do rosto, oferecendo um perfil mais harmonioso."
              },
              {
                "name": "Full face (harmonização facial)",
                "description":
                    "A harmonização facial envolve o preenchimento de várias áreas do rosto para criar um equilíbrio estético, melhorando contornos e proporções de maneira natural."
              },
              {
                "name": "Marionete",
                "description":
                    "Corrige as linhas de marionete, que se estendem dos cantos da boca até o queixo, proporcionando um aspecto mais suave e rejuvenescido."
              },
              {
                "name": "Código de barra (Comissura labial)",
                "description":
                    "Trata as linhas verticais ao redor dos lábios, conhecidas como código de barras, suavizando a área e rejuvenescendo a expressão."
              },
              {
                "name": "Bigode chinês (sulco nasogeniano)",
                "description":
                    "Reduz a profundidade dos sulcos nasogenianos, que se estendem do nariz aos cantos da boca, proporcionando uma aparência mais suave e jovem."
              },
              {
                "name": "Têmpora",
                "description":
                    "Preenche a área das têmporas, restaurando volume perdido e proporcionando um contorno facial mais completo e harmonioso."
              },
            ]
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      setState(() {
                        if (fillerName == e["name"]) {
                          fillerName = "";
                        } else {
                          fillerName = e["name"] as String;
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
                        fillerName == e["name"]
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

class FillerWebView extends StatelessWidget {
  const FillerWebView({
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
                    "Aplique as mais poderas estrategias de vendas digitais",
                    style: TextStyle(
                      fontSize: perimeter * 0.008,
                    ),
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width * 1 / 4) - 20,
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
        ],
      ),
    );
  }
}
