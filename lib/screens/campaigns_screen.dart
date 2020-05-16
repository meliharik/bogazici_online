import 'package:bogazicionline/bottom_navigation.dart';
import 'package:bogazicionline/screens/campaing_detail.dart';
import 'package:flutter/material.dart';

class CampaignsPage extends StatelessWidget {
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
                    "assets/images/marketing.png",
                    scale: 0.9,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Campaign(
                "18 Haziran 2020 22.00",
                "Gayrettepe Point Otel",
                "The Game",
                "assets/images/karaoke.jpg",
                50,
                "Karaoke gecesiyle eğlenceye doyacaksın!"),
            Campaign(
                "18 Haziran 2020 22.00",
                "Gayrettepe Point Otel",
                "The Game",
                "assets/images/karaoke.jpg",
                50,
                "Karaoke gecesiyle eğlenceye doyacaksın!"),
            Campaign(
                "18 Haziran 2020 22.00",
                "Gayrettepe Point Otel",
                "The Game",
                "assets/images/karaoke.jpg",
                50,
                "Karaoke gecesiyle eğlenceye doyacaksın!"),
          ],
        ),
        bottomNavigationBar: BottomBar());
  }
}

class Campaign extends StatelessWidget {
  final String date;
  final String place;
  final String caption;
  final String assetName;
  final int price;
  final String text;
  Campaign(this.date, this.place, this.caption, this.assetName, this.price,
      this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CampaignDetail(
                    date, place, caption, assetName, price, text)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(place),
                      Text(date),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 120,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage(assetName)),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Colors.redAccent,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(caption),
                          Text(text),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Ücret: " + price.toString() + "₺"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
