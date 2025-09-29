import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Reading",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: Colors.deepPurple),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Placeholder(), flex: 2),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    detailbuttons(ButtonText: "Week 1"),
                    detailbuttons(ButtonText: "Week 2"),
                    detailbuttons(ButtonText: "Week 3"),
                    detailbuttons(ButtonText: "Week 4"),
                    detailbuttons(ButtonText: "Week 5"),
                  ],
                ),
              ],
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}

class detailbuttons extends StatelessWidget {
  const detailbuttons({super.key, required this.ButtonText});

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
