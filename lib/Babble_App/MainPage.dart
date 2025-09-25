// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
      bottomNavigationBar: bottommenu(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 18,
              child: Card(
                elevation: 0,
                child: Row(
                  children: [
                    Padding(
                      padding: AppPading().classicpadding,
                      child: Container(
                        width: appheightwidth().containerwidth,
                        height: appheightwidth().containerheight,
                        decoration: photodecoration(),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: appheightwidth().containerheight,
                      child: Column(
                        children: [
                          Padding(
                            padding: AppPading().Textpadding,
                            child: Text(
                              textAlign: TextAlign.left,
                              "Hi! ${AppText().name} 👋 ",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                          Text(
                            AppText().altbaslik,
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
              flex: 29,
              child: Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                child: infocard(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Course List",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              flex: 55,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 240,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Courselistcard(
                              backcolor: Color(0xFFFFF0F0),
                              imagepatth: 'headphone.png',
                              title: 'Listening',
                              lessons: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 160,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Courselistcard(
                              backcolor: Color(0xFFE6F0FF),
                              imagepatth: 'Speaker.png',
                              title: 'Speaking',
                              lessons: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Courselistcard(
                              backcolor: Color(0xFFFFEBEE),
                              imagepatth: 'reading.png',
                              title: 'Reading',
                              lessons: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Courselistcard(
                              backcolor: Color(0xFFEDEBFF),
                              imagepatth: 'Writting.png',
                              title: 'Writting',
                              lessons: 15,
                            ),
                          ),
                        ),
                      ],
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

  BoxDecoration photodecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(
        image: NetworkImage('https://picsum.photos/200'),
        fit: BoxFit.cover,
      ),
    );
  }
}

class infocard extends StatelessWidget {
  const infocard({super.key});

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

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2, bottom: 10),
                  child: Text(
                    AppText().infobaslik,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.white),
                  ),
                ),
                Text(
                  AppText().infomesaj,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.white),
                  softWrap: true,
                  maxLines: null,
                  overflow: TextOverflow.visible,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        AppText().infobuttontext,
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge?.copyWith(color: Colors.white),
                      ),
                      Icon(Icons.arrow_right_alt_sharp, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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

class Courselistcard extends StatelessWidget {
  const Courselistcard({
    Key? key,
    required this.backcolor,
    required this.imagepatth,
    required this.title,
    required this.lessons,
  }) : super(key: key);
  final Color backcolor;
  final int lessons;
  final String imagepatth;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backcolor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Kartın mevcut genişliğine göre resim boyutunu ayarla
            double imageSize = constraints.maxWidth * 0.3; // genişliğin %30'u
            if (imageSize > 70) imageSize = 70; // maksimum boyut
            if (imageSize < 40) imageSize = 40; // minimum boyut

            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(imageSize / 2),
                  child: SizedBox(
                    width: imageSize,
                    height: imageSize,
                    child: Image.asset(
                      "lib/Babble_App/assets/image/$imagepatth",

                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const Spacer(), // Metni altta yaslamak için araya boşluk

                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "$lessons lessons",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Icon(Icons.arrow_right_alt),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class AppText {
  String name = "Gardas";
  String altbaslik = "What do you want to learn ?";
  String infobaslik = "Speaking";
  String infomesaj = "Awesome-we're pulling in your data automagically! :)";
  String infobuttontext = "Continue Lesson ";
}

class AppPading {
  EdgeInsets classicpadding = EdgeInsets.all(8.0);
  EdgeInsets Textpadding = EdgeInsets.only(bottom: 10);
}

class appheightwidth {
  double containerheight = 80;
  double containerwidth = 80;
}
