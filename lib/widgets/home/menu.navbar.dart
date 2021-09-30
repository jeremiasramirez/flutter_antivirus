import 'package:fire_antivirus/helpers/logo.app.dart';
import 'package:flutter/material.dart';

AppBar navBar() {
  return AppBar(
    centerTitle: true,
    toolbarHeight: 55,
    leading: logoApp(0, 50),
    backgroundColor: Colors.grey[900],
    title: Text("Fire Antivirus",
        style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
            fontFamily: "ubuntu")),
    elevation: 1.1,
  );
}
