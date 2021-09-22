import 'package:fire_antivirus/helpers/logo.app.dart';
import 'package:flutter/material.dart';

AppBar navBar() {
  return AppBar(
    centerTitle: true,
    toolbarHeight: 40,
    leading: logoApp(0, 35),
    backgroundColor: Colors.grey[900],
    title: Text("Fire Antivirus",
        style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: "ubuntu")),
    elevation: 1.1,
  );
}
