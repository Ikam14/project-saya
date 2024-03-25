import 'package:climater_project_application/menu_weather.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(178, 254, 254, 1),
      body: Container(
        margin: const EdgeInsets.all(7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
                flex: 4,
                child: Container(
                  child: logoPlacement("images/app_logo.png",
                      "CLIMATE PROJECT\nwith API integration", 20),
                )),
            Flexible(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                        flex: 2,
                        child: logoPlacement("images/weather_icon.png",
                            "Data of Weather, Temperature, & Humidity", 12)),
                    Flexible(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Flexible(
                                child: logoPlacement(
                                    "images/earthquake_icon.png",
                                    "Data of Earthquake",
                                    12)),
                            Flexible(
                                child: logoPlacement(
                                    "images/flood_icon.png",
                                    "Data of Flood\nin West Java Province",
                                    12)),
                          ],
                        )),
                    Flexible(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.off(() => const WeatherMenu());
                            },
                            child: const Text("Next>>")))
                  ],
                )),
            //Spacer(),
            Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: const Text(
                        "Supported by data of:",
                        style: TextStyle(fontSize: 10, color: Colors.black87),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: footer("images/Logo_BMKG.png",
                              "Badan Meteorologi,\nKlimatologi, dan Geofisika"),
                        ),
                        Container(
                            child: footer("images/logo_open_data_jabar.png",
                                "West Java\nProvince"))
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Row footer(String logo, String text) {
    return Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Image(
              fit: BoxFit.contain,
              height: 50,
              width: 50,
              image: AssetImage(logo)),
        ),
        Text(
          text,
          maxLines: 2,
          style: const TextStyle(fontSize: 10),
        ),
      ],
    );
  }

  Container logoPlacement(String logo, String textValue, double sizeText) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 7, 0, 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 4,
            child: Image(
              image: AssetImage(logo),
              fit: BoxFit.fill,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Flexible(flex: 3, child: description(textValue, sizeText))
        ],
      ),
    );
  }

  Text description(String value, double size) {
    return Text(
      value,
      maxLines: 3,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: size, color: Colors.black),
    );
  }
}
