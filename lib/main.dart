import 'package:flutter/material.dart';
import './Screens/homeScreen..dart';
import './Screens/WiderImage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: homeScreen(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
