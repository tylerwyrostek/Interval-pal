import 'package:flutter/material.dart';
import 'package:interval_pal/screens/home_screen.dart';

class IntervalPalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
