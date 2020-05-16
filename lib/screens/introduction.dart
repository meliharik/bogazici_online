import 'package:bogazicionline/background.dart';
import 'package:flutter/material.dart';

import '../page_indicator.dart';
import 'welcome_screen.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  List<Widget> pages = [];
  int pageCounter = 0;
  final length = 3;
  final pageIndexNotifier = ValueNotifier<int>(0);
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  void initState() {
    pages.add(Entertainment(
        'assets/images/illus.png',
        "İÇECEKLER",
        "Senden Eğlence Bizden",
        "Bol bol yeni arkadaş edinebileceğin ve",
        "eğlenebileceğin etkinlikleri kaçırma."));

    pages.add(Entertainment(
      'assets/images/illus.png',
      "SINAVLARIN",
      "Yaklaştı",
      "Derslere girmiyorsun ama bu dersi",
      "geçmen lazım. Hadi hemen notlara",
      smallText3: "gözat.",
    ));

    pages.add(Entertainment(
        'assets/images/illus.png',
        "HEEEEEYY!!!",
        "Yarın Okul Tatilmiş!",
        "Yoksa haberin yok muydu?",
        "Hadi ama duyuru kanalına bak hemen."));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const length = 3;
    final pageIndexNotifier = ValueNotifier<int>(0);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackGround('assets/images/bg2.jpeg'),
          PageView.builder(
            controller: pageController,
            onPageChanged: (index) {
              pageIndexNotifier.value = index;
            },
            itemCount: length,
            itemBuilder: (context, index) {
              return pages[index];
            },
          ),
          Positioned(
            bottom: 150,
            left: 0,
            right: 0,
            child: PageCircleIndicator(
              itemCount: length,
              currentPageNotifier: pageIndexNotifier,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()));
              },
              child: Text(
                "SKIP",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: GestureDetector(
              onTap: () {
                if (pageCounter == length - 1) {
                  pageCounter = pageIndexNotifier.value;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                } else {
                  pageCounter = pageIndexNotifier.value + 1;
                  pageController.animateToPage(pageCounter,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.linear);
                }
              },
              child: Text(
                "NEXT",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Entertainment extends StatelessWidget {
  final String assetImage;
  final String bigText;
  final String middleText;
  final String smallText1;
  final String smallText2;
  final String smallText3;
  Entertainment(this.assetImage, this.bigText, this.middleText, this.smallText1,
      this.smallText2,
      {this.smallText3 = ""});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 70,
        ),
        Image.asset(
          assetImage,
        ),
        SizedBox(
          height: 200,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.check_circle_outline,
              color: Colors.white,
              size: 50,
            ),
            SizedBox(height: 10),
            Text(
              bigText,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              middleText,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              smallText1,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              smallText2,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              smallText3,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
