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
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          labelLarge: TextStyle(fontSize: 18),
          bodyMedium: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      home: const MyHomePage(title: ""),
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
  int _selectedIndex = 0; // aktif menü
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // sayfalar listesi
  final List<Widget> _pages = const [
    HomePage(),
    SearchPage(),

    MessagePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.blueGrey[300],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.other_houses_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
