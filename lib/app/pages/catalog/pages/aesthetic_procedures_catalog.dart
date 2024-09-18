import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:self_esteem/app/pages/catalog/pages/biostimulators_catalog.dart';
import 'package:self_esteem/app/pages/catalog/pages/botox_catalog.dart';
import 'package:self_esteem/app/pages/catalog/pages/enzymes_catalog.dart';
import 'package:self_esteem/app/pages/catalog/pages/information_catalog.dart';
import 'package:self_esteem/app/pages/catalog/pages/filler_catalog.dart';
import 'package:self_esteem/app/pages/catalog/pages/jet_plasma_catalog.dart';
import 'package:self_esteem/app/pages/catalog/pages/microneedling_catalog.dart';
import 'package:self_esteem/app/pages/catalog/pages/peeling_catalog.dart';
import 'package:self_esteem/app/pages/catalog/pages/small_veins_drying_catalog.dart';
import 'package:self_esteem/app/pages/catalog/widgets/catalog_image.dart';

class AestheticProceduresCatalog extends StatelessWidget {
  const AestheticProceduresCatalog({
    super.key,
    required this.perimeter,
    required this.scrollController,
  });

  final double perimeter;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return AestheticProceduresMobileView(
      perimeter: perimeter,
      scrollController: scrollController,
    );
  }
}

class AestheticProceduresMobileView extends StatefulWidget {
  const AestheticProceduresMobileView({
    super.key,
    required this.perimeter,
    required this.scrollController,
  });

  final double perimeter;
  final ScrollController scrollController;

  @override
  State<AestheticProceduresMobileView> createState() =>
      _AestheticProceduresMobileViewState();
}

class _AestheticProceduresMobileViewState
    extends State<AestheticProceduresMobileView> {
  Widget? nextCatalog;

  void scrollPage(offset) {
    widget.scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 850),
      curve: Curves.easeInOutQuad,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: widget.perimeter * 0.015),
        SizedBox(
          width: widget.perimeter * 0.11,
          child: Text(
            "Procedimentos Estéticos",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.perimeter * 0.015,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(height: widget.perimeter * 0.01),
        SizedBox(
          height: (MediaQuery.of(context).size.width * 3 / 4),
          width: (MediaQuery.of(context).size.width * 3 / 4),
          child: Image.asset(
            "assets/images/aesthetical_procedures.jpg",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: widget.perimeter * 0.01),
        ChooseCategoryComponent(
          perimeter: widget.perimeter,
          selectNextCatalog: (catalog, componentSize) {
            setState(() {
              nextCatalog = catalog;
            });

            // allComponents contain the sum of height of all componets after the current page ( MediaQuery.of(context).size.height * 3 ),
            // plus the nextCatalog top space to scroll to the right position view

            double allComponents = (widget.perimeter * 0.015) +
                (widget.perimeter * 0.01) +
                (widget.perimeter * 0.01) +
                (widget.perimeter * 0.015) +
                (MediaQuery.of(context).size.width * 3 / 4) +
                (widget.perimeter * 0.008) +
                componentSize;

            allComponents = allComponents + (widget.perimeter * 0.015);
            scrollPage(MediaQuery.of(context).size.height * 3 + allComponents);
          },
        ),
        SizedBox(height: widget.perimeter * 0.01),
        nextCatalog != null
            ? Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0XFFCFC8C3),
                child: Column(
                  children: [
                    nextCatalog!,
                    SizedBox(height: widget.perimeter * 0.02)
                  ],
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}

class ChooseCategoryComponent extends StatelessWidget {
  const ChooseCategoryComponent({
    super.key,
    required this.perimeter,
    required this.selectNextCatalog,
  });

  final double perimeter;
  final void Function(Widget catalog, double componentSize) selectNextCatalog;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Wrap(
            children: [
              {
                "name": "Quero fazer um procedimento",
                "icon": Icons.question_mark,
                "nextCatalog": InformationCatalog(perimeter: perimeter),
              },
              {
                "name": "Botox",
                "icon": FontAwesomeIcons.syringe,
                "nextCatalog": BotoxCatalog(perimeter: perimeter),
              },
              {
                "name": "Preenchimento",
                "icon": Icons.medication_liquid_sharp,
                "nextCatalog": FillerCatalog(perimeter: perimeter),
              },
              {
                "name": "Microagulhamento",
                "icon": Icons.medication_liquid_sharp,
                "nextCatalog": MicroneedlingCatalog(perimeter: perimeter),
              },
              {
                "name": "Bioestimuladores",
                "icon": Icons.medication_liquid_sharp,
                "nextCatalog": BiostimulatorsCatalog(perimeter: perimeter),
              },
              {
                "name": "Enzimas",
                "icon": Icons.medication_liquid_sharp,
                "nextCatalog": EnzyemesCatalog(perimeter: perimeter),
              },
              {
                "name": "Jato de plasma",
                "icon": Icons.medication_liquid_sharp,
                "nextCatalog": JetPlasmaCatalog(perimeter: perimeter),
              },
              {
                "name": "Peeling - Químico (retinóico)",
                "icon": Icons.medication_liquid_sharp,
                "nextCatalog": PeelingCatalog(perimeter: perimeter),
              },
              {
                "name": "Secagem de vasinho (Escleroterapia com glicose)",
                "icon": Icons.medication_liquid_sharp,
                "nextCatalog": SmallVeinsDryingCatalog(perimeter: perimeter),
              },
            ]
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      selectNextCatalog(
                          e["nextCatalog"] as Widget, context.size!.height);
                    },
                    child: Container(
                      margin: EdgeInsets.all(perimeter * 0.004),
                      width: perimeter * 0.04,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(perimeter * 0.01),
                            decoration: const BoxDecoration(
                              color: Color(0XFFd8c2a5),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              e["icon"] as IconData,
                              size: perimeter * 0.01,
                            ),
                          ),
                          SizedBox(height: perimeter * 0.005),
                          Text(
                            e["name"] as String,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: perimeter * 0.0055,
                              fontFamily: "Lato",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
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
