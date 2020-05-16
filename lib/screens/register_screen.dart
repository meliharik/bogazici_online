import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/bg6.jpeg'),
                  fit: BoxFit.fill,
                )
            ),
          ),
          ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height*(0.7/10),),
                    Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 8,color: Colors.white)
                          ),
                          child: CircleAvatar(
                            backgroundColor: Color(0xff9013fe),
                            child: Icon(Icons.person,color: Colors.white,size: 65,),
                            radius: 50,
                          ),
                        ),
                        Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 3,color: Colors.white),
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                child: Icon(Icons.add,size: 25,color: Colors.white,),
                                backgroundColor: Color(0xff3ec7e6),
                                radius: 15,
                              ),
                            ),
                            bottom: 0,
                            right: 0,
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*(0.3/10),),
                    Text('KAYIT OL',style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),),
                    SizedBox(height: MediaQuery.of(context).size.height*(0.1/10),),
                    Container(
                      width: MediaQuery.of(context).size.width * (8.8/10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff9013ed),
                                  width: 2
                              )
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.6)
                              )
                          ),
                          labelText: 'İsim',
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*(0.1/10),),
                    Container(
                      width: MediaQuery.of(context).size.width * (8.8/10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff9013ed),
                                  width: 2
                              )
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.6)
                              )
                          ),
                          labelText: 'Öğrenci Mail Adresi',
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*(0.1/10),),
                    Container(
                      width: MediaQuery.of(context).size.width * (8.8/10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff9013ed),
                                  width: 2
                              )
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.6)
                              )
                          ),
                          labelText: 'Şifre',
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*(0.1/10),),
                    Container(
                      width: MediaQuery.of(context).size.width * (8.8/10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff9013ed),
                              width: 2
                            )
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.6)
                            )
                          ),
                          labelText: 'Şifre Onayla',
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * (0.5/10),),
                    Container(
                      height: MediaQuery.of(context).size.height * (0.8/10),
                      width: MediaQuery.of(context).size.width * (9/10),
                      decoration: BoxDecoration(
                        color: Color(0xff9013ed),
                        borderRadius: BorderRadius.all(Radius.circular(50))
                      ),
                      child: Center(
                        child: Text('Hesap Oluştur',style: TextStyle(
                          color: Colors.white,fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * (0.4/10),),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Zaten hesabın var mı?', style: TextStyle(color: Colors.grey,fontSize: 20)),
                          TextSpan(text: ' Giriş Yap',style: TextStyle(color: Color(0xff3ec7e6),fontSize: 20))
                        ]
                      ),
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
