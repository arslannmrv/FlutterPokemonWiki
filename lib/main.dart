import 'package:flutter/material.dart';
import 'package:pokemon/home.dart';
import 'package:pokemon/login.dart';
import 'package:pokemon/pages/about.dart';
import 'package:pokemon/pages/bellsprout.dart';
import 'package:pokemon/pages/bullbasaur.dart';
import 'package:pokemon/pages/caterpie.dart';
import 'package:pokemon/pages/charmander.dart';
import 'package:pokemon/pages/eevee.dart';
import 'package:pokemon/pages/jigglypuff.dart';
import 'package:pokemon/pages/meowth.dart';
import 'package:pokemon/pages/pikachu.dart';
import 'package:pokemon/pages/psyduck.dart';
import 'package:pokemon/pages/snorlax.dart';
import 'package:pokemon/pages/squirtle.dart';
import 'package:pokemon/pages/zubat.dart';
import 'package:pokemon/trailer/video.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/main":(context)=> MyApp(),
        "/home": (context) => Home(),
        "/pikachu": (context) => Pikachu(),
        "/psyduck": (context) => Psyduck(),
        "/jigglypuff":(context) =>Jigglypuff(),
        "/zubat":(context) => Zubat(),
        "/squirtle":(context) => Squirtle(),
        "/bellsprout":(context) => Bellsprout(),
        "/caterpie":(context) => Caterpie(),
        "/bullbasaur":(context) => Bullbasaur(),
        "/charmander":(context) => Charmander(),
        "/eevee":(context) => Eevee(),
        "/about":(context) => About(),
        "/meowth":(context)=> Meowth(),
        "/snorlax":(context) => Snorlax(),
        "/movie":(context)=> PikachuTrailer(),
      },
      title: 'Pokemon Wiki',
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

