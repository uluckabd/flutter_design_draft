import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Page_Title(Title: "Messages"),
        actions: [Title_Button(icon: Icon(Icons.add_comment_outlined))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Search_Textfield(),
            Message_Card(
              nameSurname: 'Abdullah Ulucak',
              message: 'Hi how are you?',
              image: 'https://picsum.photos/200',
            ),
            Message_Card(
              nameSurname: 'Ahmet Demir',
              message: 'Hey Are you there?',
              image: 'https://picsum.photos/201',
            ),
            Message_Card(
              nameSurname: 'Yasin Kaya',
              message: 'What is your problem bro?',
              image: 'https://picsum.photos/202',
            ),
            Message_Card(
              nameSurname: 'Eyüp Gök',
              message: 'hey Call me please',
              image: 'https://picsum.photos/203',
            ),
            Message_Card(
              nameSurname: 'Fatih Keleş',
              message: 'Where are you from now',
              image: 'https://picsum.photos/203',
            ),
            Message_Card(
              nameSurname: 'Fırat Demir',
              message: 'Hi where are you from',
              image: 'https://picsum.photos/203',
            ),
          ],
        ),
      ),
    );
  }
}

class Message_Card extends StatelessWidget {
  const Message_Card({
    super.key,
    required this.nameSurname,
    required this.message,
    required this.image,
  });

  final String nameSurname;
  final String message;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.white,
        elevation: 1,
        child: Row(
          children: [
            Profile_Photo(image: "$image"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 5),
                  child: Text(
                    "$nameSurname",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "$message",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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

class Profile_Photo extends StatelessWidget {
  const Profile_Photo({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Center(
        child: CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage("$image"),
        ),
      ),
    );
  }
}
