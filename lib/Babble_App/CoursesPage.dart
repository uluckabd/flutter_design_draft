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
                    bodycard(),
                    bodycard(),
                    bodycard(),
                    bodycard(),
                    bodycard(),
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
  const bodycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(30),
      ),
      color: Colors.deepPurple,
      elevation: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircularPercentIndicator(
              radius: 70.0, // büyükluk
              lineWidth: 12.0, //kalınlık
              percent: 0.75,
              progressColor: Colors.white,
              center: Text(
                "%75",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              //yüzde
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [],
            ),
          ),
        ],
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
