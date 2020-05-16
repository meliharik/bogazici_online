import 'package:bogazicionline/background.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      height: MediaQuery.of(context).size.height * (0.7 / 10),
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
                      height: MediaQuery.of(context).size.height * (0.2 / 10),
                    ),
                    Text(
                      'GIRIŞ YAP',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (0.1 / 10),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * (8.8 / 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff9013ed), width: 2)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.6))),
                          labelText: 'Öğrenci Mail Adresi',
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (0.1 / 10),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * (8.8 / 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff9013ed), width: 2)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.6))),
                          labelText: 'Şifre',
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (0.2 / 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                            (route) => false);
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
                            'Giriş Yap',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * (0.4 / 10),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * (1.8 / 10),
                      width: MediaQuery.of(context).size.width * (4 / 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/glass.png'),
                        fit: BoxFit.fill,
                      )),
                    )
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
