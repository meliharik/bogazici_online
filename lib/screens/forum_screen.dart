import 'package:bogazicionline/bottom_navigation.dart';
import 'package:flutter/material.dart';

class ForumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.deepPurple,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3.5,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 11,
                  left: MediaQuery.of(context).size.width / 3,
                  child: Image.asset(
                    "assets/images/forumpage.png",
                    scale: 0.5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Card(
                            color: Colors.blue,
                            child: Text("16 Mayıs 2020 15.43"),
                          ),
                          Text("Tarık C."),
                        ],
                      ),
                      Text(
                          "59RK'de otobüs kartımı unuttum diye bana kartımı uzatan arkadaş ne tatlısın öyle sen :)"),
                    ],
                  ),
                ),
              ),
            ),
            Post("16 Mayıs 2020 15.50", "Şu sarı montlu çocuk sen misin?",
                "Ceren K."),
            Post("16 Mayıs 2020 15.50",
                "Gidin aşkınızı otobüste yaşayın\nGençler", "Cevde O."),
          ],
        ),
        bottomNavigationBar: BottomBar());
  }
}

class Post extends StatelessWidget {
  final String date;
  final String text;
  final String publisher;
  Post(this.date, this.text, this.publisher);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Card(
                    color: Colors.blue,
                    child: Text(date),
                  ),
                  Text(publisher),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(text),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
