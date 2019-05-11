import 'package:flutter/material.dart';

class PokemonCharacter {
  final String name;
  final String type;
  final String category;
  final String abilities;
  final String about;
  final String prev;
  final String next;
  final Color boxColor;
  final String flare;
  final String flareAnimationName;

  const PokemonCharacter({
    @required this.name,
    @required this.type,
    @required this.category,
    @required this.abilities,
    @required this.about,
    @required this.prev,
    @required this.next,
    @required this.boxColor,
    @required this.flare,
    @required this.flareAnimationName,
  });

  static const Map<String, PokemonCharacter> pokemonCharacters = {
    'pikachu': PokemonCharacter(
      name: 'Pikachu',
      type: 'Electric',
      category: 'Mouse',
      abilities: 'Static',
      about:
          '''Whenever Pikachu comes across something new, it blasts it with a jolt of electricity. If you come across a blackened berry, it's evidence that this Pokémon mistook the intensity of its charge.''',
      prev: null,
      next: '/psyduck',
      boxColor: Colors.yellow,
      flare: 'assets/pikachu.flr',
      flareAnimationName: 'pikachu',
    ),
    'psyduck': PokemonCharacter(
      name: 'Psyduck',
      type: 'Water',
      category: 'Duck',
      abilities: 'Damp/Cloud Nine',
      about:
          '''Psyduck uses a mysterious power. When it does so, this Pokémon generates brain waves that are supposedly only seen in sleepers. This discovery spurred controversy among scholars.''',
      prev: '/pikachu',
      next: '/jigglypuff',
      boxColor: Colors.yellow,
      flare: 'assets/psyduck.flr',
      flareAnimationName: 'psyduck',
    ),
    'jigglypuff': PokemonCharacter(
      name: 'Jigglypuff',
      type: 'Fairy',
      category: 'Balloon',
      abilities: 'Cute Charm/Competitive',
      about:
          '''Jigglypuff's vocal cords can freely adjust the wavelength of its voice. This Pokémon uses this ability to sing at precisely the right wavelength to make its foes most drowsy.''',
      prev: '/psyduck',
      next: '/zubat',
      boxColor: Colors.purpleAccent,
      flare: 'assets/jigglypuff.flr',
      flareAnimationName: ' Jigglypuff',
    ),
    'zubat': PokemonCharacter(
      name: 'Zubat',
      type: 'Poison/Flying',
      category: 'Bat',
      abilities: 'Inner Focus',
      about:
          '''Zubat remains quietly unmoving in a dark spot during the bright daylight hours. It does so because prolonged exposure to the sun causes its body to become slightly burned.''',
      prev: '/jigglypuff',
      next: '/squirtle',
      boxColor: Color(0xFF82B1FF),
      flare: 'assets/zubat.flr',
      flareAnimationName: 'zubat',
    ),
    'squirtle': PokemonCharacter(
      name: 'Squirtle',
      type: 'Water',
      category: 'Turtle',
      abilities: 'Torrent',
      about:
          '''Squirtle's shell is not merely used for protection. The shell's rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds.''',
      prev: '/zubat',
      next: '/bellsprout',
      boxColor: Color(0xFF82B1FF),
      flare: 'assets/squirtle.flr',
      flareAnimationName: ' Squirtle',
    ),
    'bellsprout': PokemonCharacter(
      name: 'Bellsprout',
      type: 'Grass/Poison',
      category: 'Flower',
      abilities: 'Chlorophyll',
      about:
          '''Bellsprout's thin and flexible body lets it bend and sway to avoid any attack, however strong it may be. From its mouth, this Pokémon spits a corrosive fluid that melts even iron.''',
      prev: '/squirtle',
      next: '/caterpie',
      boxColor: Colors.yellow,
      flare: 'assets/bellsprout.flr',
      flareAnimationName: 'bellsprout',
    ),
    'caterpie': PokemonCharacter(
      name: 'Caterpie',
      type: 'Bug',
      category: 'Worm',
      abilities: 'Shield Dust',
      about:
          '''Caterpie has a voracious appetite. It can devour leaves bigger than its body right before your eyes. From its antenna, this Pokémon releases a terrifically strong odor.''',
      prev: '/bellsprout',
      next: '/bullbasaur',
      boxColor: Colors.green,
      flare: 'assets/caterpie.flr',
      flareAnimationName: 'caterpie',
    ),
    'bullbasaur': PokemonCharacter(
      name: 'Bullbasaur',
      type: 'Grass/Poison',
      category: 'Seed',
      abilities: 'Overgrow',
      about:
          '''Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.''',
      prev: '/caterpie',
      next: '/charmander',
      boxColor: Colors.greenAccent,
      flare: 'assets/bullbasaur.flr',
      flareAnimationName: 'bullbasaur',
    ),
    'charmander': PokemonCharacter(
      name: 'Charmander',
      type: 'Fire',
      category: 'Lizard',
      abilities: 'Blaze',
      about:
          '''The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely.''',
      prev: '/bullbasaur',
      next: '/eevee',
      boxColor: Colors.orange,
      flare: 'assets/charmander.flr',
      flareAnimationName: 'charmander',
    ),
    'eevee': PokemonCharacter(
      name: 'Eevee',
      type: 'Normal',
      category: 'Evolution',
      abilities: 'Run Away/Adaptability',
      about:
          '''Eevee has an unstable genetic makeup that suddenly mutates due to the environment in which it lives. Radiation from various stones causes this Pokémon to evolve.''',
      prev: '/charmander',
      next: '/meowth',
      boxColor: Colors.brown,
      flare: 'assets/eevee.flr',
      flareAnimationName: 'eevee',
    ),
    'meowth': PokemonCharacter(
      name: 'Meowth',
      type: 'Normal',
      category: 'Scratch Cat',
      abilities: 'Pickup/Technician',
      about:
          '''Meowth withdraws its sharp claws into its paws to slinkily sneak about without making any incriminating footsteps. For some reason, this Pokémon loves shiny coins that glitter with light.''',
      prev: '/eevee',
      next: '/snorlax',
      boxColor: Colors.white70,
      flare: 'assets/meowth.flr',
      flareAnimationName: 'meowth',
    ),
    'snorlax': PokemonCharacter(
      name: 'Snorlax',
      type: 'Normal',
      category: 'Sleeping',
      abilities: 'Thick Fat/Immunity',
      about:
          '''Snorlax's typical day consists of nothing more than eating and sleeping. It is such a docile Pokémon that there are children who use its expansive belly as a place to play. ''',
      prev: '/eevee',
      next: null,
      boxColor: Colors.blue,
      flare: 'assets/snorlax.flr',
      flareAnimationName: 'snorlax',
    ),
  };
}
