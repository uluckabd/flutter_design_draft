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
                child: Card(
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2, bottom: 10),
                            child: Text(
                              "Speaking",
                              style: Theme.of(context).textTheme.bodyLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                          Text(
                            "Awesome-we're pulling   ",
                            style: Theme.of(context).textTheme.labelLarge
                                ?.copyWith(color: Colors.white),
                            softWrap: true,
                            maxLines: null,
                            overflow: TextOverflow.visible,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  "Continue Lesson ",
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_right_alt_sharp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                            child: Card(
                              color: Color(0xFFFFF0F0),

                              child: Text(
                                'Bu bir kart',
                              ), // Card'a bir içerik ekledik
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 160,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Card(
                              color: Color(0xFFE6F0FF),
                              child: Text(
                                'Bu bir kart',
                              ), // Card'a bir içerik ekledik
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
                            child: Card(
                              color: Color(0xFFFFFCE6),
                              child: Text(
                                'Bu bir kart',
                              ), // Card'a bir içerik ekledik
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 210,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Card(
                              color: Color(0xFFEDEBFF),
                              child: Text(
                                'Bu bir kart',
                              ), // Card'a bir içerik ekledik
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

class AppText {
  String name = "gardas";
  String altbaslik = "What do you want to learn?";
}

class AppPading {
  EdgeInsets classicpadding = EdgeInsets.all(8.0);
  EdgeInsets Textpadding = EdgeInsets.only(bottom: 10);
}

class appheightwidth {
  double containerheight = 80;
  double containerwidth = 80;
}
