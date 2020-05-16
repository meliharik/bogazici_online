import 'package:bogazicionline/background.dart';
import 'package:flutter/material.dart';

import 'register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackGround('assets/images/bg6.jpeg'),
          ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 12,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 8, color: Colors.white)),
                          child: CircleAvatar(
                            backgroundColor: Color(0xff9013fe),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 65,
                            ),
                            radius: 50,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 7,
                    ),
                    Text(
                      'HOŞGELDIN!',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (0.2 / 10),
                    ),
                    Text(
                      'Üniversitenin Tadını Bizimle\nÇıkarmaya Var mısın?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.4), fontSize: 20),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (0.5 / 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * (0.8 / 10),
                        width: MediaQuery.of(context).size.width * (9 / 10),
                        decoration: BoxDecoration(
                            color: Color(0xff9013ed),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Center(
                          child: Text(
                            'Hesap Oluştur',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (0.3 / 10),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * (3 / 10),
                      width: MediaQuery.of(context).size.width * (8 / 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/illus.png'),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
