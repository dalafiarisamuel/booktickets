import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight() {
    return Get.height;
  }

  static double getScreenWidth() {
    return Get.width;
  }

  static double getHeight(double pixel) {
    double screenProportion = getScreenHeight() / pixel;
    return getScreenHeight() / screenProportion;
  }

  static double getWidth(double pixel) {
    double screenProportion = getScreenWidth() / pixel;
    return getScreenWidth() / screenProportion;
  }
}
