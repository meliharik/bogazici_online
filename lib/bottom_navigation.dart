import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * (1.2 / 10),
      width: MediaQuery.of(context).size.width * (3 / 10),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('assets/images/bottom.png'))),
    );
  }
}
