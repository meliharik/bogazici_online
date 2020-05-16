import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final assetName;
  BackGround(this.assetName);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(assetName),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
