import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*(4/10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/bg5.jpeg'),
                  fit: BoxFit.fill,
                )
            ),
          ),
          ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * (9/10),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/girl.png'),
                              radius: 25,
                            ),
                            Text(' ANASAYFA',style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * (8/10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height * (1.5/10),
                                  width: MediaQuery.of(context).size.width * (3/10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/kampanyalar.png')
                                    )
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height * (1.5/10),
                                  width: MediaQuery.of(context).size.width * (3/10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/notlar.png')
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * (8/10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height * (1.5/10),
                                  width: MediaQuery.of(context).size.width * (3/10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/al sat.png')
                                      )
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height * (1.5/10),
                                  width: MediaQuery.of(context).size.width * (3/10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/etkinlikler.png')
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * (8/10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height * (1.5/10),
                                  width: MediaQuery.of(context).size.width * (3/10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/homebuddy.png')
                                      )
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height * (1.5/10),
                                  width: MediaQuery.of(context).size.width * (3/10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/duyurular.png')
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * (8/10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height * (1.5/10),
                                  width: MediaQuery.of(context).size.width * (3/10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/takvim.png')
                                      )
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height * (1.5/10),
                                  width: MediaQuery.of(context).size.width * (3/10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/forum.png')
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * (1.2/10),
        width: MediaQuery.of(context).size.width * (3/10),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bottom.png')
            )
        ),
      ),
    );
  }
}
