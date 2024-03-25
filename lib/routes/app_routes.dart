import 'package:climater_project_application/presentations/homepage/homepage_screen.dart';
import 'package:climater_project_application/presentations/welcome_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String initialRoute = '/initial-route';

  static const String homePage = '/home-page';
  static const String welcomeScreen = '/welcome-screen';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: (context) => WelcomeScreen(),
        welcomeScreen: (context) => WelcomeScreen(),
        homePage: (context) => HomePageScreen(),
      };
}
