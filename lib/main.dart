import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fire virus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Text('Flutter Test'),
    );
  }
}
