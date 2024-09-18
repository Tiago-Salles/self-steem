import 'package:flutter/material.dart';
import 'package:self_esteem/app/pages/web_site.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.transparent,
        fontFamily: "Source_Sans_3",
      ),
      home: const WebSite(),
    );
  }
}
