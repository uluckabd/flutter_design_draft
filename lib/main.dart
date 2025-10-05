import 'package:flutter/material.dart';
import 'package:flutter_design_draft/Babble_App/CoursesPage.dart';
import 'package:flutter_design_draft/Babble_App/DetailPage.dart';
import 'package:flutter_design_draft/Babble_App/MainPage.dart';
import 'package:flutter_design_draft/My_App/Home_Page.dart';
import 'package:flutter_design_draft/My_App/Message_Page.dart';

import 'package:flutter_design_draft/My_App/Profile_Page.dart';
import 'package:flutter_design_draft/My_App/Search_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          labelLarge: TextStyle(fontSize: 18),
          bodyMedium: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),

      home: SearchPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
