import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Page_Title(Title: "Home"),
        actions: [Title_Button(icon: Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Search_Textfield(),
            SizedBox(height: 10),
            Menu_Title(menutitle: "Categories"),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // her satırda 2 kart
                crossAxisSpacing: 10, // yatay boşluk
                mainAxisSpacing: 40, // dikey boşluk

                children: [
                  Menu_Button(
                    backcolor: Colors.indigo,
                    ButtonName: "Home",
                    menuicon: Icon(Icons.home),
                  ),
                  Menu_Button(
                    backcolor: Colors.green,
                    ButtonName: "Settings",
                    menuicon: Icon(Icons.settings),
                  ),
                  Menu_Button(
                    backcolor: Colors.amber,
                    ButtonName: "Profile",
                    menuicon: Icon(Icons.person),
                  ),
                  Menu_Button(
                    backcolor: Colors.purple,
                    ButtonName: "Messages",
                    menuicon: Icon(Icons.message),
                  ),
                  Menu_Button(
                    backcolor: Colors.red,
                    ButtonName: "Favorites",
                    menuicon: Icon(Icons.favorite),
                  ),
                  Menu_Button(
                    backcolor: Colors.tealAccent,
                    ButtonName: "Starred",
                    menuicon: Icon(Icons.star_rounded),
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

class Menu_Title extends StatelessWidget {
  const Menu_Title({super.key, required this.menutitle});

  final String menutitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20),
          child: Text(
            "$menutitle",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}

class Menu_Button extends StatelessWidget {
  const Menu_Button({
    super.key,
    required this.backcolor,
    required this.ButtonName,
    required this.menuicon,
  });
  final Icon menuicon;
  final Color backcolor;
  final String ButtonName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: backcolor,
          ),
          width: 150,
          height: 150,

          child: Icon(menuicon.icon, color: Colors.white, size: 50),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$ButtonName",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
