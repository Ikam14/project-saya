// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:climater_project_application/menu_earthquake_data.dart';
import 'package:climater_project_application/presentations/homepage/presentations/flood/flood.dart';
import 'package:climater_project_application/presentations/homepage/presentations/weather/weather.dart';
import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  int indexPage;

  List<Widget> widgetOptions = <Widget>[
    Weather(),
    EarthQuake(),
    Flood(),
  ];

  HomePageProvider({
    this.indexPage = 0,
  });

  changeIndexPage(int index) {
    indexPage = index;
    notifyListeners();
  }
}
