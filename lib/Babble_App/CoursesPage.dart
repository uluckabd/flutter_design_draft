// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottommenu(),
      appBar: AppBar(centerTitle: true, title: _Titletext()),
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _Subtitletext(),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                topbuttons(ButtonText: "All Time"),
                topbuttons(ButtonText: "Last Week"),
                topbuttons(ButtonText: "Day Time"),
                topbuttons(ButtonText: "Weekend"),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    bodycard(
                      cardcolor: const Color.fromARGB(255, 101, 175, 236),
                      cardtitle: 'cardtitle',
                      cardtime: '14.30',
                      carddate: '1 eylül 2025',
                    ),
                    bodycard(
                      cardcolor: const Color.fromARGB(255, 229, 136, 200),
                      cardtitle: 'cardtitle',
                      cardtime: '14.31',
                      carddate: '2 eylül 2025',
                    ),
                    bodycard(
                      cardcolor: const Color.fromARGB(255, 239, 236, 94),
                      cardtitle: 'cardtitle',
                      cardtime: '18.25',
                      carddate: '3 eylül 2025',
                    ),
                    bodycard(
                      cardcolor: const Color.fromARGB(255, 161, 132, 231),
                      cardtitle: 'cardtitle',
                      cardtime: '15.30',
                      carddate: '4 eylül 2025',
                    ),
                    bodycard(
                      cardcolor: const Color.fromARGB(255, 145, 154, 216),
                      cardtitle: 'cardtitle',
                      cardtime: '16.00',
                      carddate: '5 eylül 2025',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Subtitletext extends StatelessWidget {
  const _Subtitletext({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Book Your Live Class",
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class _Titletext extends StatelessWidget {
  const _Titletext({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Live Class",
      style: Theme.of(
        context,
      ).textTheme.headlineLarge?.copyWith(color: Colors.deepPurple),
    );
  }
}

class bodycard extends StatelessWidget {
  const bodycard({
    Key? key,
    required this.cardcolor,
    required this.cardtitle,
    required this.cardtime,
    required this.carddate,
  }) : super(key: key);
  final Color cardcolor;
  final String cardtitle;
  final String cardtime;
  final String carddate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: cardcolor,
        elevation: 0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 25),
                    child: Text(
                      cardtitle,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(30),
                      ),
                      child: Container(
                        height: 25,
                        width: 250,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 4, right: 4),
                              child: Icon(Icons.access_time),
                            ),
                            Text(
                              "$cardtime PM | ",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text("$carddate"),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "book now",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Icon(Icons.arrow_right_alt),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: CircleAvatar(
                radius: 40, // yarıçap (80px için 40 veriyoruz)
                backgroundImage: AssetImage(
                  "lib/Babble_App/assets/image/coursepageprofil.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class topbuttons extends StatelessWidget {
  const topbuttons({super.key, required this.ButtonText});

  final String ButtonText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // Buton 1
      child: Padding(
        // Butonlar arasına boşluk
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          onPressed: () {},
          child: FittedBox(
            child: Text(
              "$ButtonText",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class bottommenu extends StatelessWidget {
  const bottommenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.deepPurple,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.other_houses_outlined, color: Colors.blueGrey[200]),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore, color: Colors.blueGrey[200]),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_sharp, color: Colors.blueGrey[200]),
          label: "Courses",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.blueGrey[200]),
          label: "Profile",
        ),
      ],
    );
  }
}
