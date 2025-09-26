import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Text("Book Your Live Class"),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                // Buton 1
                child: Padding(
                  // Butonlar arasına boşluk
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: FittedBox(child: Text("All Time")),
                  ),
                ),
              ),
              Expanded(
                // Buton 2
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: FittedBox(child: Text("Last Week")),
                  ),
                ),
              ),
              Expanded(
                // Buton 3
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: FittedBox(child: Text("Day Time")),
                  ),
                ),
              ),
              Expanded(
                // Buton 4
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: FittedBox(child: Text("Weekend")),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
