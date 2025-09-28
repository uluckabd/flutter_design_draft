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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Live Class",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: Colors.deepPurple),
        ),
      ),
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Book Your Live Class",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
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
                      cardcolor: const Color.fromARGB(255, 74, 249, 92),
                      title: 'asdasdasdas',
                    ),
                    bodycard(
                      cardcolor: const Color.fromARGB(255, 194, 238, 179),
                      title: 'asdasdasdas',
                    ),
                    bodycard(
                      cardcolor: const Color.fromARGB(255, 228, 150, 42),
                      title: 'asdasdasdas',
                    ),
                    bodycard(
                      cardcolor: const Color.fromARGB(255, 225, 87, 108),
                      title: 'asdasdasdas',
                    ),
                    bodycard(
                      cardcolor: const Color.fromARGB(255, 199, 79, 101),
                      title: 'asdasdasdas',
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

class bodycard extends StatelessWidget {
  const bodycard({Key? key, required this.cardcolor, required this.title})
    : super(key: key);
  final Color cardcolor;
  final String title;

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
                      title,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(30),
                      ),
                      child: Container(height: 25, width: 250),
                    ),
                  ),

                  Row(
                    children: [Text("book now"), Icon(Icons.arrow_right_alt)],
                  ),
                ],
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
