import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "About",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
             boxShadow: [
              new BoxShadow(
                  color: Colors.black,
                  offset: new Offset(4.0, 4.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0)
            ],
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              colors: [
                Colors.amber,
                Colors.cyan,
              ],
            ),
          ),
        ),
        leading: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
            onPressed: () => Navigator.pushNamed(context, "/home"),
          ),
        ),
      ),
      body: Container(
            margin: EdgeInsets.only(top: 60,left: 15,right: 15),
            decoration: BoxDecoration(
              boxShadow: [
                new BoxShadow(
                    color: Colors.black,
                    offset: new Offset(4.0, 4.0),
                    blurRadius: 10.0,
                    spreadRadius: 1.0)
              ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.amberAccent[100],
            ),
            padding:
                EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0, bottom: 10),
            child: Text(
              '''Icons made by Roundicons Freebies from www.flaticon.com
              App made by Merve Arslan
              Twitter: arslannmrv''',
              style: new TextStyle(
                color: Colors.grey[850],
                fontSize: 17.0,
                fontStyle: FontStyle.normal,
              ),
              maxLines: 300,
            ),
          ),
    );
  }
}