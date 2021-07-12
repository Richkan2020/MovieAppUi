import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/pages/homepage.dart';
import 'package:movieapp/categorybox.dart';


void main() {
  runApp(MovieApp());
}

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Color(0xff000f33)),fontFamily: 'JosefinSans'),
      debugShowCheckedModeBanner: false,
      home: HomePage()


    );
  }



}
