import 'package:flutter/material.dart';
import 'package:self_esteem/app/core/hardware/device_screen_information.dart';
import 'package:self_esteem/app/pages/catalog/catalogs_page.dart';
import 'package:self_esteem/app/pages/contact/contact_page.dart';
import 'package:self_esteem/app/pages/home/home_page.dart';

class WebSite extends StatefulWidget {
  const WebSite({super.key});

  @override
  State<WebSite> createState() => _WebSiteState();
}

class _WebSiteState extends State<WebSite> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double perimeter = DeviceScreenInformation.perimeter(context);

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              HomePage(
                perimeter: perimeter,
                scrollController: scrollController,
              ),
              CatalogPages(
                perimeter: perimeter,
                scrollController: scrollController,
              ),
              ContactPage(perimeter: perimeter),
            ],
          ),
        ),
      ),
    );
  }
}
