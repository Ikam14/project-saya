import 'package:climater_project_application/menu_earthquake_data.dart';
import 'package:flutter/material.dart';

class WeatherMenu extends StatefulWidget {
  const WeatherMenu({super.key});

  @override
  State<WeatherMenu> createState() => _WeatherMenuState();
}

class _WeatherMenuState extends State<WeatherMenu> {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = const TabBar(
      //padding: EdgeInsets.all(5),
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: Color.fromRGBO(178, 254, 254, 1),
          width: 3,
        )),
        color: Color.fromRGBO(0, 82, 82, 1),
      ),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.cloud, color: Color.fromRGBO(178, 254, 254, 1)),
          //text: "Weather",
        ),
        Tab(
          icon: Icon(
            Icons.graphic_eq,
            color: Color.fromRGBO(178, 254, 254, 1),
          ),
          //text: "Earthquake",
        ),
        Tab(
          icon: Icon(
            Icons.flood,
            color: Color.fromRGBO(178, 254, 254, 1),
          ),
          //text: "Flood",
        ),
      ],
    );

    TextEditingController controller = TextEditingController(text: "");

    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(178, 254, 254, 1),
              title: const Center(child: Text("Weather Predict")),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(
                      color: const Color.fromRGBO(34, 45, 50, 1),
                      child: myTabBar)),
            ),
            body: TabBarView(
              children: <Widget>[
                Container(
                  color: Colors.black12,
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Type your City/ District Location",
                              suffixIcon: const Icon(Icons.search),
                              labelText: "location",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onChanged: (value) {},
                          controller: controller,
                        ),
                      ),
                      const WeatherContent(),
                    ],
                  ),
                ),
                const Center(
                  child: EarthQuake(),
                ),
                const Center(
                  child: Text("Tab 3"),
                ),
              ],
            ),
          )),
    );
  }
}

class WeatherContent extends StatelessWidget {
  const WeatherContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: const Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}

/** 
class WeatherMenu2 extends StatelessWidget {
  const WeatherMenu2({super.key});

  @override
  Widget build(BuildContext context) {
    
  }
}*/
