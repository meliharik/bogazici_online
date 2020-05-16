import 'package:bogazicionline/background.dart';
import 'package:bogazicionline/screens/introduction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ScreenSplash extends StatefulWidget {
  @override
  _ScreenSplashState createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2000), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Introduction()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackGround('assets/images/bg1.jpeg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.check_circle_outline,
                color: Colors.white,
                size: 50,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "BOĞAZİÇİ ONLINE",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 70,
              ),
              CupertinoActivityIndicator(
                animating: true,
                radius: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
