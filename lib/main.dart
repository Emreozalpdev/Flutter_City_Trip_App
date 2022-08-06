import 'package:city_trip/screens/home_page.dart';
import 'package:city_trip/utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: appTitle,
    );
  }
}
