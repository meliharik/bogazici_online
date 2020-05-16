import 'package:bogazicionline/background.dart';
import 'package:flutter/material.dart';

class CampaignDetail extends StatelessWidget {
  final String date;
  final String place;
  final String caption;
  final String assetName;
  final int price;
  final String text;
  CampaignDetail(this.date, this.place, this.caption, this.assetName,
      this.price, this.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Stack(
        children: <Widget>[
          BackGround("assets/images/bg6.jpeg"),
          Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                caption,
                style: TextStyle(color: Colors.white, fontSize: 30),
                textAlign: TextAlign.start,
              ),
              Container(
                width: 400,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(assetName)),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.redAccent,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 180,
                        height: 150,
                        child: Card(
                          color: Colors.deepPurple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Kontenjan",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "125 Kişi",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        height: 150,
                        child: Card(
                          color: Colors.deepPurple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Ücret",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                price.toString() + "₺",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 180,
                        height: 150,
                        child: Card(
                          color: Colors.deepPurple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Adres",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                place,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        height: 150,
                        child: Card(
                          color: Colors.deepPurple,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Tarih",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                date,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: MediaQuery.of(context).size.height * (0.8 / 10),
                  width: MediaQuery.of(context).size.width * (9 / 10),
                  decoration: BoxDecoration(
                      color: Color(0xff9013ed),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Center(
                    child: Text(
                      'Rezervasyon Yap',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
