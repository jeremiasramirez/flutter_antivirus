import 'package:fire_antivirus/helpers/separate.dart';
import 'package:flutter/material.dart';

class ItemsMenu extends StatelessWidget {
  IconData icon;
  String text;

  ItemsMenu(this.icon, this.text);
  Widget build(context) {
    return Container(
        padding: EdgeInsets.only(top: 18, bottom: 4),
        margin: EdgeInsets.only(top: 0, bottom: 0),
        alignment: Alignment.center,
        width: 100,
        height: 80,
        decoration: BoxDecoration(
            // color: Color.fromRGBO(200, 180, 0, .8),
            ),
        child: Column(children: [
          Icon(this.icon, color: Colors.grey[300]),
          Separated(0, 3),
          this.fontHome(this.text)
        ]));
  }

  Widget selected() {
    return Container(
        padding: EdgeInsets.only(top: 18, bottom: 4),
        margin: EdgeInsets.only(top: 0, bottom: 0),
        alignment: Alignment.center,
        width: 100,
        height: 80,
        decoration: BoxDecoration(color: Colors.deepOrange[900]),
        child: Column(children: [
          Icon(this.icon, color: Colors.grey[300]),
          Separated(0, 3.5),
          this.fontHome(this.text)
        ]));
  }

  Text fontHome(String text) {
    return Text(text, style: TextStyle(color: Colors.grey[300], fontSize: 13));
  }
}
