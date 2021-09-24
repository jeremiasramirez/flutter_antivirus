import 'package:flutter/material.dart';

class StatusHome extends StatefulWidget {
  StatusHomeState createState() => new StatusHomeState();
}

class StatusHomeState extends State<StatusHome> {
  double widthScreen = 0;
  double heightScreen = 0;

  Widget build(context) {
    this.sizesScreen(context);
    return Container(
      padding: EdgeInsets.only(top: 40),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      width: this.widthScreen,
      height: this.heightScreen,
      child: this.statusItems(),
    );
  }

  Widget statusItems() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Text("Hola!!!!"), Text("Hola!!!! XD")]);
  }

  void sizesScreen(context) {
    setState(() {
      this.widthScreen = MediaQuery.of(context).size.width - 79;
      this.heightScreen = MediaQuery.of(context).size.height;
    });
  }
}
