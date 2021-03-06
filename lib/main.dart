import 'package:corona_virus/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corona Info',
      theme: ThemeData.dark(),
      home: HomePage()
    );
  }
}
