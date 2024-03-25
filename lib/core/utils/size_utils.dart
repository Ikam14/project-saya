import 'package:flutter/widgets.dart';

class SizeUtils {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double screenAwareWidth(BuildContext context, double percentage) =>
      MediaQuery.of(context).size.width * percentage;

  static double screenAwareHeight(BuildContext context, double percentage) =>
      MediaQuery.of(context).size.height * percentage;
}
