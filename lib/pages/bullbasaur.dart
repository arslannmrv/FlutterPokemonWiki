import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Bullbasaur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Bullbasaur",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.amber,
                  Colors.cyan,
                ],
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () => Navigator.pushNamed(context, "/charmander"),
            )
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pushNamed(context, "/caterpie"),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 270,
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black,
                      offset: new Offset(4.0, 4.0),
                      blurRadius: 10.0,
                      spreadRadius: 1.0)
                ],
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
                gradient: new LinearGradient(
                  colors: [Colors.amber, Colors.cyan],
                ),
              ),
              child: Center(
                child: GestureDetector(
                  child: Container(
                    width: 200,
                    height: 150,
                    decoration: new BoxDecoration(boxShadow: [
                      new BoxShadow(
                          color: Colors.black45,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 6.0)
                    ], border: Border.all(width: 4, color: Colors.greenAccent)),
                    child: FlareActor(
                      "assets/bullbasaur.flr",
                      fit: BoxFit.contain,
                      animation: "bullbasaur",
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [
                          Colors.amberAccent[200],
                          Colors.redAccent[100]
                        ],
                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.black87,
                      )),
                  child: Text(
                    "Type:Grass/Poison",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [
                          Colors.amberAccent[200],
                          Colors.redAccent[100]
                        ],
                      ),
                      border: Border.all(width: 2, color: Colors.black87)),
                  child: Text(
                    "Category:Seed",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: new LinearGradient(
                        colors: [
                          Colors.amberAccent[200],
                          Colors.redAccent[100]
                        ],
                      ),
                      border: Border.all(width: 2, color: Colors.black87)),
                  child: Text(
                    "Abilities:Overgrow",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(30),
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
              padding: EdgeInsets.only(
                  top: 10.0, left: 15.0, right: 15.0, bottom: 10),
              child: Text(
                '''Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.''',
                style: new TextStyle(
                  color: Colors.grey[850],
                  fontSize: 17.0,
                  fontStyle: FontStyle.normal,
                ),
                maxLines: 300,
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, "/home"),
          child: Icon(
            Icons.home,
            color: Colors.black,
          ),
          backgroundColor: Colors.yellow,
        ));
  }
}
