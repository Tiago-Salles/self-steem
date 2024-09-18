import 'package:flutter/material.dart';

enum DeviceType { mobile, web }

class DeviceScreenInformation {
  static double perimeter(BuildContext context) {
    double deviceHeightScreen = MediaQuery.of(context).size.height;
    double deviceWidthScreen = MediaQuery.of(context).size.width;
    double perimeter = ((deviceHeightScreen * 2) + (deviceWidthScreen * 2));
    return perimeter;
  }

  static DeviceType getDeviceType(BuildContext context) {
    DeviceType deviceType;
    double screenPerimeter = perimeter(context);
    if (screenPerimeter >= 2655) {
      deviceType = DeviceType.web;
    } else {
      deviceType = DeviceType.mobile;
    }
    return deviceType;
  }
}
