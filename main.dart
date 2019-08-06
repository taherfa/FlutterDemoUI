import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// pages
import 'homepage.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      home: HomePage(),
      theme: appTheme,
      routes: <String, WidgetBuilder> {
        '/homepage': (BuildContext context) => new HomePage(),
      },
    );
  }
}

ThemeData appTheme = ThemeData(
  // scaffoldBackgroundColor: Colors.white70,
    scaffoldBackgroundColor: Colors.grey[200],
    primaryColor: Colors.tealAccent[700],
    fontFamily: 'Varela');
