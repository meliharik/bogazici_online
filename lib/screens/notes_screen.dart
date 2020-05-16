import 'package:bogazicionline/bottom_navigation.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
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
                    "assets/images/notepage.png",
                    scale: 0.5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Note("assets/images/math.png", "Matematik 101",
                "Mühendislik Fakültesi", "Tarık CAN"),
            SizedBox(
              height: 20,
            ),
            Note("assets/images/kimya.png", "Kimya 101",
                "Mühendislik Fakültesi", "Tarık CAN"),
            SizedBox(
              height: 20,
            ),
            Note("assets/images/atomic.png", "Fizik 101",
                "Mühendislik Fakültesi", "Tarık CAN"),
            SizedBox(
              height: 20,
            ),
            Note("assets/images/literature.png", "Edebiyat 101",
                "Mühendislik Fakültesi", "Tarık CAN"),
          ],
        ),
        bottomNavigationBar: BottomBar());
  }
}

class Note extends StatelessWidget {
  final String assetName;
  final String noteName;
  final String faculty;
  final String publisher;
  Note(this.assetName, this.noteName, this.faculty, this.publisher);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        title: Text(
          noteName,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        contentPadding: EdgeInsets.all(20),
        subtitle: Text(
          faculty,
          textAlign: TextAlign.center,
        ),
        leading: Image.asset(assetName),
        trailing: Text(publisher),
        onTap: () {},
      ),
    );
  }
}
