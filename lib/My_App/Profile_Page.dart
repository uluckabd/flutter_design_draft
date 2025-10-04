import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Page_Title(Title: 'Profile'),
        actions: [Title_Button(icon: Icon(Icons.settings))],
      ),
      body: Expanded(
        flex: 2,
        child: Column(
          children: [
            Profile_Photo(image: 'https://picsum.photos/200'),

            Name_Surname(Name: "Abdullah", Surname: "Ulucak"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [info_followers(), info_following()],
            ),
            Menu_Title(menutitle: 'My Dashboard'),

            Container(
              child: Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Menu_Button(
                      backcolor: Colors.cyan,
                      ButtonName: 'Home',
                      menuicon: Icon(Icons.home),
                    ),
                    Menu_Button(
                      backcolor: Colors.deepPurpleAccent,
                      ButtonName: "Documents",
                      menuicon: Icon(Icons.document_scanner),
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

class info_following extends StatelessWidget {
  const info_following({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SizedBox(
          child: Column(
            children: [
              Text("567", style: Theme.of(context).textTheme.headlineLarge),
              Text(
                "Following",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class info_followers extends StatelessWidget {
  const info_followers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Container(
          child: Column(
            children: [
              Text("1.234", style: Theme.of(context).textTheme.headlineLarge),
              Text(
                "Followers",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 20,
                ),
              ),
            ],
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
          width: 100,
          height: 100,

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

class Profile_Photo extends StatelessWidget {
  const Profile_Photo({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60),
      child: Center(
        child: CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage("$image"),
        ),
      ),
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

class Name_Surname extends StatelessWidget {
  const Name_Surname({super.key, required this.Name, required this.Surname});

  final String Name;
  final String Surname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        "$Name $Surname",
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
