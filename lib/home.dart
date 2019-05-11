import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: IconButton(
              icon: Icon(
                Icons.movie,
                size: 30,
              ),
              onPressed: () => Navigator.pushNamed(context, "/movie"),
            ),
          ),
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
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(4.0, 4.0),
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
            _pokemonItem(context, 'pikachu'),
            _pokemonItem(context, 'psyduck'),
            _pokemonItem(context, 'jigglypuff'),
            _pokemonItem(context, 'zubat'),
            _pokemonItem(context, 'squirtle'),
            _pokemonItem(context, 'bellsprout'),
            _pokemonItem(context, 'caterpie'),
            _pokemonItem(context, 'bullbasaur'),
            _pokemonItem(context, 'charmander'),
            _pokemonItem(context, 'eevee'),
            _pokemonItem(context, 'meowth'),
            _pokemonItem(context, 'snorlax'),
          ],
        ),
      ),
    );
  }

  Widget _pokemonItem(BuildContext context, String pokemonName) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/$pokemonName'),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0)
            ],
            gradient: LinearGradient(
              colors: [Colors.amber, Colors.cyan],
            ),
            color: Colors.black,
            borderRadius: BorderRadius.circular(65)),
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.center,
        child: FlareActor(
          'assets/$pokemonName.flr',
          fit: BoxFit.contain,
          animation: _flareAnimationName(pokemonName),
        ),
      ),
    );
  }

  /// handles the special case of Jigglypuff and Squirtle
  String _flareAnimationName(String pokemonName) {
    switch (pokemonName) {
      case 'jigglypuff':
        return ' Jigglypuff';
      case 'squirtle':
        return ' Squirtle';
      default:
        return pokemonName;
    }
  }
}
