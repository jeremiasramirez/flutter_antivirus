import 'package:flutter/material.dart';

import 'item.menu.dart';

class MenuHome extends StatefulWidget {
  MenuHomeState createState() => MenuHomeState();
}

class MenuHomeState extends State<MenuHome> {
  Widget build(context) {
    return Container(
        width: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
            color: Color.fromRGBO(20, 20, 20, .7)),
        child: ListView(
          physics: ScrollPhysics(),
          children: [
            ItemsMenu(Icons.security, "Status").selected(),
            ItemsMenu(Icons.lock, "Protection"),
            ItemsMenu(Icons.fingerprint, "Privacy"),
            ItemsMenu(Icons.speed, "Tuned UP"),
            ItemsMenu(Icons.ac_unit, "CPU"),
            ItemsMenu(Icons.settings, "Settings")
          ],
        ));
  }
}
