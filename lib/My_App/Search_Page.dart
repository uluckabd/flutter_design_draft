import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Page_Title(Title: "Search"),
        actions: [Title_Button(icon: Icon(Icons.search))],
      ),
      body: Column(
        children: [
          Search_Textfield(),
          Menu_Title(menutitle: "Recent"),
          Search_Card(card_name: 'Art'),
          Search_Card(card_name: 'Science'),
          Search_Card(card_name: 'Travel'),

          Menu_Title(menutitle: "Suggested"),
          Search_Card(card_name: 'Technology'),
          Search_Card(card_name: 'Music'),
          Search_Card(card_name: 'Sports'),
        ],
      ),
    );
  }
}

class Search_Card extends StatelessWidget {
  const Search_Card({super.key, required this.card_name});

  final String card_name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 0,
        color: Colors.grey.shade100,
        child: Container(
          width: MediaQuery.of(context).size.width,

          child: Padding(
            padding: const EdgeInsets.only(left: 14, top: 4, bottom: 4),
            child: Text(
              "$card_name",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}

class Page_Title extends StatelessWidget {
  const Page_Title({super.key, required this.Title});

  final String Title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("$Title", style: Theme.of(context).textTheme.headlineLarge),
    );
  }
}

class Title_Button extends StatelessWidget {
  const Title_Button({super.key, required this.icon});

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Icon(icon.icon, size: 30),
    );
  }
}

class Search_Textfield extends StatelessWidget {
  const Search_Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.search, color: Colors.grey.shade500),
          ),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none, // tıklanmamışken kenarlık yok
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none, // tıklanınca da kenarlık yok
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Menu_Title extends StatelessWidget {
  const Menu_Title({super.key, required this.menutitle});

  final String menutitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            menutitle,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}
