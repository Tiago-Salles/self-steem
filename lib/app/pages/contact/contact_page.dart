import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:self_esteem/app/pages/catalog/widgets/catalog_image.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    required this.perimeter,
    super.key,
  });

  final double perimeter;

  @override
  Widget build(BuildContext context) {
    return ContactPageMobileView(perimeter: perimeter);
  }
}

class ContactPageMobileView extends StatefulWidget {
  const ContactPageMobileView({
    super.key,
    required this.perimeter,
  });

  final double perimeter;

  @override
  State<ContactPageMobileView> createState() => _ContactPageMobileViewState();
}

class _ContactPageMobileViewState extends State<ContactPageMobileView> {
  Uri getEmailUri() {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: "selfesteem.team1@gmail.com",
      query: {
        "subject": "Receber informações.",
        "body":
            "Olá,\n\nTenho interesse em saber mais sobre os procedimentos estéticos, por favor, aguardo retorno."
      }
          .entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&'),
    );

    return uri;
  }

  Uri getInstagramUri() {
    Uri uri = Uri.parse("https://www.instagram.com/self_esteem_estetica/");

    return uri;
  }

  Uri getWhatsappUri() {
    String message =
        "Olá, tenho interesse em saber mais sobre os procedimentos estéticos, por favor, aguardo retorno.";
    Uri uri = Uri.parse(
        "https://api.whatsapp.com/send?phone=+5519982154612&text=$message");

    return uri;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(children: <Widget>[
        SizedBox(height: widget.perimeter * 0.015),
        SizedBox(
          width: widget.perimeter * 0.11,
          child: Text(
            "Contatos",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.perimeter * 0.015,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(height: widget.perimeter * 0.02),
        SizedBox(
          width: (MediaQuery.of(context).size.width),
          child: Image.asset(
            "assets/images/womans.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: widget.perimeter * 0.01),
        SizedBox(
          width: widget.perimeter * 0.11,
          child: Text(
            "Sinta-se bem, eleve sua autoestima",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.perimeter * 0.01,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(height: widget.perimeter * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            {
              "buttonTitle": "19 98215-4612",
              "icon": Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.black,
                size: widget.perimeter * 0.007,
              ),
              "function": () async {
                await launchUrl(getWhatsappUri());
              },
            },
            {
              "buttonTitle": "self_esteem@gmail.com",
              "icon": Icon(
                Icons.email_outlined,
                color: Colors.black,
                size: widget.perimeter * 0.007,
              ),
              "function": () async {
                await launchUrl(getEmailUri());
              },
            },
            {
              "buttonTitle": "@self_esteem_estetica",
              "icon": Icon(
                FontAwesomeIcons.instagram,
                color: Colors.black,
                size: widget.perimeter * 0.007,
              ),
              "function": () async {
                await launchUrl(getInstagramUri());
              },
            },
          ]
              .map<Widget>(
                (e) => GestureDetector(
                  onTap: e["function"] as void Function(),
                  child: Container(
                    margin: EdgeInsets.all(widget.perimeter * 0.004),
                    width: widget.perimeter * 0.04,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(widget.perimeter * 0.01),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(164, 158, 158, 158),
                            shape: BoxShape.circle,
                          ),
                          child: e["icon"] as Icon,
                        ),
                        SizedBox(height: widget.perimeter * 0.005),
                        // Text(
                        //   e["buttonTitle"] as String,
                        //   textAlign: TextAlign.center,
                        //   style: TextStyle(
                        //     fontStyle: FontStyle.italic,
                        //     fontSize: widget.perimeter * 0.005,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ]),
    );
  }
}

class ContactPageWebView extends StatefulWidget {
  const ContactPageWebView({
    super.key,
    required this.perimeter,
  });

  final double perimeter;

  @override
  State<ContactPageWebView> createState() => _ContactPageWebViewState();
}

class _ContactPageWebViewState extends State<ContactPageWebView> {
  Uri getEmailUri() {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: "selfesteem.team1@gmail.com",
      query: {
        "subject": "Receber informações.",
        "body":
            "Olá,\n\nTenho interesse em saber mais sobre os procedimentos estéticos, por favor, aguardo retorno."
      }
          .entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&'),
    );

    return uri;
  }

  Uri getInstagramUri() {
    Uri uri = Uri.parse("https://www.instagram.com/self_esteem_estetica/");

    return uri;
  }

  Uri getWhatsappUri() {
    String message =
        "Olá, tenho interesse em saber mais sobre os procedimentos estéticos, por favor, aguardo retorno.";
    Uri uri = Uri.parse(
        "https://api.whatsapp.com/send?phone=+5519982154612&text=$message");

    return uri;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: (MediaQuery.of(context).size.width * 1 / 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 3 / 4) -
                      widget.perimeter * 0.008,
                  child: const CatalogImage(image: ""),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 1 / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                    SizedBox(
                      width: widget.perimeter * 0.1,
                      child: Text(
                        "Sinta-se bem, eleve sua autoestima",
                        style: TextStyle(
                          fontSize: widget.perimeter * 0.008,
                        ),
                      ),
                    ),
                  ] +
                  [
                    // {
                    //   "buttonTitle": "+351 914 212 565",
                    //   "icon": Icon(
                    //     FontAwesomeIcons.phone,
                    //     color: Colors.blue,
                    //     size: widget.perimeter * 0.004,
                    //   ),
                    //   "function": () {}
                    // },
                    {
                      "buttonTitle": "19 98215-4612",
                      "icon": Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.black,
                        size: widget.perimeter * 0.004,
                      ),
                      "function": () async {
                        await launchUrl(getWhatsappUri());
                      },
                    },
                    {
                      "buttonTitle": "self_esteem@gmail.com",
                      "icon": Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                        size: widget.perimeter * 0.004,
                      ),
                      "function": () async {
                        await launchUrl(getEmailUri());
                      },
                    },

                    {
                      "buttonTitle": "@self_esteem_estetica",
                      "icon": Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.black,
                        size: widget.perimeter * 0.004,
                      ),
                      "function": () async {
                        await launchUrl(getInstagramUri());
                      },
                    },
                  ]
                      .map<Widget>(
                        (e) => GestureDetector(
                          onTap: e["function"] as void Function(),
                          child: Container(
                            margin: EdgeInsets.all(widget.perimeter * 0.004),
                            width: widget.perimeter * 0.04,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.all(widget.perimeter * 0.01),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(164, 158, 158, 158),
                                    shape: BoxShape.circle,
                                  ),
                                  child: e["icon"] as Icon,
                                ),
                                SizedBox(height: widget.perimeter * 0.005),
                                Text(
                                  e["buttonTitle"] as String,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: widget.perimeter * 0.0055,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
