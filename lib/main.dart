import 'package:facebook_ui/widgets/maintab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'facebook',
      theme: ThemeData(

        primaryColor: Colors.white,
      ),
      home: MainTab()
    );
  }
}

