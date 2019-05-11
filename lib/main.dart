import 'package:flutter/material.dart';
import 'package:pokemon/data/pokemon_character.dart';
import 'package:pokemon/home.dart';
import 'package:pokemon/login.dart';
import 'package:pokemon/pages/about.dart';
import 'package:pokemon/pages/pokemon_character_screen.dart';
import 'package:pokemon/trailer/video.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/main": (context) => MyApp(),
        "/home": (context) => Home(),
        "/movie": (context) => PikachuTrailer(),
        "/about": (context) => About(),
        "/pikachu": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['pikachu'],
            ),
        "/psyduck": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['psyduck'],
            ),
        "/jigglypuff": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['jigglypuff'],
            ),
        "/zubat": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['zubat'],
            ),
        "/squirtle": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['squirtle'],
            ),
        "/bellsprout": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['bellsprout'],
            ),
        "/caterpie": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['caterpie'],
            ),
        "/bullbasaur": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['bullbasaur'],
            ),
        "/charmander": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['charmander'],
            ),
        "/eevee": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['eevee'],
            ),
        "/meowth": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['meowth'],
            ),
        "/snorlax": (context) => PokemonCharacterScreen(
              pokemonCharacter: PokemonCharacter.pokemonCharacters['snorlax'],
            ),
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
