import 'package:flutter/material.dart';

class EarthQuake extends StatelessWidget {
  const EarthQuake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        margin: const EdgeInsets.all(9),
        child: Column(
          children: <Widget>[
            const Text("Recent Earthquake"),
            Flexible(
              flex: 5,
              child: Card(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(5, 20, 5, 15),
                  child: Row(
                    children: [
                      Flexible(
                          child:
                              setMenu1(Icons.graphic_eq, "4.6", "Magnitude")),
                      Flexible(
                          child:
                              setMenu1(Icons.troubleshoot, "30 Km", "Depth")),
                      Flexible(
                          child: setMenu1(
                              Icons.location_searching, "9.34 LS", "113.20 BT"))
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Text("15 Earthquake M 5.0+"),
            Flexible(
              flex: 7,
              child: setMenuAll(
                  const Color.fromRGBO(178, 254, 254, 1),
                  const Color.fromRGBO(0, 82, 82, 1),
                  Icons.notification_important_outlined,
                  "128 km Southeast\nTUTUYAN-BOLTIM-SULUT",
                  "14 March 2024\n01:56:14 WIB",
                  "There is no potential for a tsunami",
                  "6.2"),
            ),
            const Spacer(),
            const Text("15 Earthquake were Felt"),
            Flexible(
              flex: 7,
              child: setMenuAll(
                  const Color.fromARGB(255, 2, 163, 163),
                  Colors.white,
                  Icons.radar,
                  "134 km Southwest\nLumajang",
                  "17 March 2024\n23:17:00 WIB",
                  "II Lumajang, II Banyuwangi",
                  "4.6"),
            )
          ],
        ),
      ),
    );
  }

  Card setMenuAll(Color colorCard, circle, IconData iconData, String location,
      date, last, String amount) {
    return Card(
      color: colorCard,
      child: Row(
        children: <Widget>[
          Flexible(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: circle,
                  borderRadius: BorderRadius.circular(150),
                ),
                child: Center(
                    child: Text(
                  amount,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: colorCard),
                )),
              )),
          Flexible(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                child: setMenu2(iconData, last, date, location),
              )),
          Flexible(
              flex: 1,
              child: SizedBox(
                width: 50,
                height: 150,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero))),
                  onPressed: () {},
                  child: const Icon(Icons.arrow_forward),
                ),
              ))
        ],
      ),
    );
  }

  Column setMenu2(
      IconData iconData, String text, String calendar, String location,
      {double fontsize = 12.0}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Flexible(
          child: Text(location,
              style: TextStyle(
                  fontSize: fontsize + 2, fontWeight: FontWeight.w600)),
        ),
        Flexible(
            child: Row(
          children: <Widget>[
            const Flexible(flex: 4, child: Icon(Icons.calendar_month)),
            const Spacer(),
            Flexible(
                flex: 8,
                child: Text(
                  calendar,
                  style: TextStyle(fontSize: fontsize),
                ))
          ],
        )),
        Flexible(
            child: Row(
          children: <Widget>[
            Flexible(flex: 4, child: Icon(iconData)),
            const Spacer(),
            Flexible(
                flex: 8,
                child: Text(text, style: TextStyle(fontSize: fontsize - 2))),
          ],
        ))
      ],
    );
  }

  Column setMenu1(IconData iconData, String amount, String desc) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[Icon(iconData), Text(amount)],
        ),
        Text(desc)
      ],
    );
  }
}
