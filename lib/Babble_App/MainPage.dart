import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 18,
              child: Card(
                elevation: 0,
                child: Row(
                  children: [
                    Padding(
                      padding: AppPading().classicpadding,
                      child: Container(
                        width: appheightwidth().containerwidth,
                        height: appheightwidth().containerheight,
                        decoration: photodecoration(),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: appheightwidth().containerheight,
                      child: Column(
                        children: [
                          Padding(
                            padding: AppPading().Textpadding,
                            child: Text(
                              textAlign: TextAlign.left,
                              "Hi! ${AppText().name} 👋 ",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                          Text(
                            AppText().altbaslik,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 22,
              child: Container(color: Colors.amber, width: 60),
            ),
            Expanded(flex: 60, child: Container()),
          ],
        ),
      ),
    );
  }

  BoxDecoration photodecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(
        image: NetworkImage('https://picsum.photos/200'),
        fit: BoxFit.cover,
      ),
    );
  }
}

class AppText {
  String name = "gardas";
  String altbaslik = "What do you want to learn?";
}

class AppPading {
  EdgeInsets classicpadding = EdgeInsets.all(8.0);
  EdgeInsets Textpadding = EdgeInsets.only(bottom: 10);
}

class appheightwidth {
  double containerheight = 80;
  double containerwidth = 80;
}
