import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.perimeter,
    required this.scrollController,
    super.key,
  });

  final double perimeter;
  final ScrollController scrollController;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void scrollPage(offset) {
    widget.scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 850),
      curve: Curves.easeInOutQuad,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    "assets/images/womans_2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: widget.perimeter * 0.01),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: widget.perimeter * 0.07),
                Text(
                  "Self Esteem",
                  style: TextStyle(
                    fontSize: widget.perimeter * 0.022,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Petit_Formal_Script",
                  ),
                ),
                SizedBox(
                  width: widget.perimeter * 0.1,
                  child: Text(
                    "Um compromisso com a sua autoestima",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: widget.perimeter * 0.01,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: "PT_Serif",
                    ),
                  ),
                ),
                SizedBox(height: widget.perimeter * 0.1),
                Column(
                  children: [
                    {
                      "buttonTitle": "Quero conhecer",
                      "function": () {
                        scrollPage(MediaQuery.of(context).size.height);
                      },
                    },
                    {
                      "buttonTitle": "Procedimentos",
                      "function": () {
                        scrollPage(MediaQuery.of(context).size.height * 3);
                      },
                    },
                    {
                      "buttonTitle": "Contatos",
                      "function": () {
                        scrollPage(MediaQuery.of(context).size.height * 10);
                      },
                    },
                  ]
                      .map(
                        (e) => GestureDetector(
                          onTap: e["function"] as void Function(),
                          child: Container(
                            margin:
                                EdgeInsets.only(top: widget.perimeter * 0.005),
                            padding: EdgeInsets.all(widget.perimeter * 0.005),
                            width: widget.perimeter * 0.1,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(155, 255, 255, 255),
                              borderRadius: BorderRadius.circular(
                                widget.perimeter * 0.001,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                e["buttonTitle"] as String,
                                style: TextStyle(
                                  fontSize: widget.perimeter * 0.007,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromARGB(255, 53, 37, 27),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
