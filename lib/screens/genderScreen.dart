import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {

  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*(8/10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/bg4.jpeg'),
                  fit: BoxFit.fill,
                )
            ),
          ),
          ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * (2.5/10),),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * (8/10),
                          child: Text('CINSIYETINI SEÇ?',style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * (0.2/10),),
                    Container(
                      width: MediaQuery.of(context).size.width * (8/10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * (2/10),
                            width: MediaQuery.of(context).size.width * (3.7/10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(7))
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border: Border.all(color: Colors.grey,width: 2),
                                          ),
                                          child: _value
                                              ? Text(''): Icon(Icons.add)
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height*(1.1/10),
                                  width: MediaQuery.of(context).size.width * (1.6/10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/mars.jpg'),
                                      fit: BoxFit.fill,
                                    )
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * (2/10),
                            width: MediaQuery.of(context).size.width * (3.7/10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(7))
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border: Border.all(color: Colors.grey,width: 2),
                                          ),
                                          child: _value
                                              ? Text(''): Icon(Icons.add)
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height*(1.1/10),
                                  width: MediaQuery.of(context).size.width * (1.6/10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/venus.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * (0.15/10),),
                    Container(
                      height: MediaQuery.of(context).size.height * (2/10),
                      width: MediaQuery.of(context).size.width * (3.7/10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(7))
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey,width: 2),
                                    ),
                                    child: _value
                                        ? Text(''): Icon(Icons.add)
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*(1.1/10),
                            width: MediaQuery.of(context).size.width * (1.6/10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/both.png'),
                                  fit: BoxFit.fill,
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xff3ec7e6),
        child: Icon(Icons.arrow_forward,color: Colors.white,size: 30,),
      ),
    );
  }
}
