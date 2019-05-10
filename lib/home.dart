import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Container(margin: EdgeInsets.only(bottom: 30),
            child: IconButton(
             icon: Icon(
               Icons.movie,
               size: 30,
             ),
              onPressed: () => Navigator.pushNamed(context, "/movie"),
            ),),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: IconButton(
             icon: Icon(
               Icons.info,
               size: 30,
             ),
              onPressed: () => Navigator.pushNamed(context, "/about"),
            ),
          )
        ],
        leading: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: IconButton(
            icon: Icon(
              Icons.account_balance,
              size: 30,
            ),
            onPressed: () => Navigator.pushNamed(context, "/main"),
          ),
        ),
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
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: EdgeInsets.all(5.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/pikachu"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/pikachu.flr",
                  fit: BoxFit.contain,
                  animation: "pikachu",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/psyduck"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/psyduck.flr",
                  fit: BoxFit.contain,
                  animation: "psyduck",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/jigglypuff"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/jigglypuff.flr",
                  fit: BoxFit.contain,
                  animation: " Jigglypuff",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/zubat"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/zubat.flr",
                  fit: BoxFit.contain,
                  animation: "zubat",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/squirtle"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/squirtle.flr",
                  fit: BoxFit.contain,
                  animation: " Squirtle",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/bellsprout"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/bellsprout.flr",
                  fit: BoxFit.contain,
                  animation: "bellsprout",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/caterpie"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/caterpie.flr",
                  fit: BoxFit.contain,
                  animation: "caterpie",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/bullbasaur"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/bullbasaur.flr",
                  fit: BoxFit.contain,
                  animation: "bullbasaur",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/charmander"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/charmander.flr",
                  fit: BoxFit.contain,
                  animation: "charmander",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/eevee"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/eevee.flr",
                  fit: BoxFit.contain,
                  animation: "eevee",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/meowth"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/meowth.flr",
                  fit: BoxFit.contain,
                  animation: "meowth",
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/snorlax"),
              child: Container(
                decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black,
                          offset: new Offset(4.0, 4.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: new LinearGradient(
                      colors: [Colors.amber, Colors.cyan],
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(65)),
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: FlareActor(
                  "assets/snorlax.flr",
                  fit: BoxFit.contain,
                  animation: "snorlax",
                ),
              ),
            ),
           
          ],
        ),
        
      ),
    );
  }
}
