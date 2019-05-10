import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, "/home"),
          child: Container(
            child: FlareActor(
              "assets/pokemon.flr",
              fit: BoxFit.contain,
              animation: "pokemon",
            ),
          ),
        ),
      ),
    );
  }
}
