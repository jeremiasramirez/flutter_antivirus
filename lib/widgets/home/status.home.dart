import 'package:animate_do/animate_do.dart';
import 'package:fire_antivirus/helpers/separate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          color: Color.fromRGBO(10, 10, 10, .8),
          gradient: RadialGradient(
              colors: [Color.fromRGBO(15, 15, 10, .8), Colors.black])),
      width: this.widthScreen,
      height: this.heightScreen,
      child: this.statusItems(),
    );
  }

  Widget statusItems() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [this.checkedStatus(), Text("Hola!!!! XD")]);
  }

  Widget checkedStatus() {
    return Container(
        width: this.widthScreen / 1.5,
        height: this.heightScreen / 2,
        alignment: Alignment.center,
        // decoration: BoxDecoration(color: Colors.blue),
        child: Column(children: [
          this.imageStatus(),
          Separated(0, 10),
          this.textForButtonDown(),
          // Separated(0, 60),
          this.buttonStatusChecked(),
          // Separated(0, 20),
          this.descriptionStatus()
        ]));
  }

  Widget textForButtonDown() {
    return Text(
      "You're protected",
      style: TextStyle(
        fontFamily: "ubuntu",
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }

  BounceInUp imageStatus() {
    return BounceInUp(
        from: 4,
        child: Icon(Icons.verified_user_outlined,
            size: 90, color: Colors.grey[500]));
  }

  Widget buttonStatusChecked() {
    return BounceInUp(
        from: 4,
        child: Container(
            width: 180,
            height: 35,
            margin: EdgeInsets.only(top: 35),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(8)),
            child: Text(
              "RUN SMART SCAN",
              style: TextStyle(
                fontFamily: "ubuntu",
                color: Colors.white,
              ),
            )));
  }

  Widget descriptionStatus() {
    return Container(
        margin: EdgeInsets.only(top: 16),
        child: Text(
            "Scan your device or all kinds of security, privacy, and perfomance issues.",
            style: TextStyle(
                fontFamily: "arial", color: Colors.grey[500], fontSize: 12)));
  }

  void sizesScreen(context) {
    setState(() {
      this.widthScreen = MediaQuery.of(context).size.width - 79;
      this.heightScreen = MediaQuery.of(context).size.height;
    });
  }
}
