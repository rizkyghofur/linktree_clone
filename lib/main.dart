import 'package:flutter/material.dart';
import 'package:linktree_clone/pages/LandingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '@rizkyghofur',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'PlayfairDisplay'),
      home: LandingPage(),
    );
  }
}
