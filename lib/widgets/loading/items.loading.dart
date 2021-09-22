import 'package:fire_antivirus/helpers/logo.app.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  Widget build(context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [logoApp(40, 110), this.loadingCircular()]);
  }

  Widget loadingCircular() {
    return CircularProgressIndicator(color: Colors.grey[300]);
  }
}
