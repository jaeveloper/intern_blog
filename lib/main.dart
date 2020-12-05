import 'package:flutter/material.dart';
import 'package:intern_blog/screens/Home.dart';
import 'package:intern_blog/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color(0xff252E39),
          primaryIconTheme: IconThemeData(color: Colors.black54),
          primaryTextTheme: TextTheme(
              title: TextStyle(color: Colors.white, fontFamily: "Aveny")),
          textTheme: TextTheme(headline6: TextStyle(color: Colors.white))),
      home: LoginScreen(),
    );
  }
}
