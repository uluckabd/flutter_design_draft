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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80, // küçük alan
                        height: 80, // kare yapmak için width ile aynı
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage('https://picsum.photos/200'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 80,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              textAlign: TextAlign.left,
                              "Hi! Gardas 👋 ",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                          Text(
                            "What do you want to learn?",
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
              child: Container(color: Colors.amber, width: 70),
            ),
            Expanded(flex: 60, child: Container()),
          ],
        ),
      ),
    );
  }
}
