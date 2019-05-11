import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(PikachuTrailer());

class PikachuTrailer extends StatefulWidget {
  @override
  PikachuTrailerState createState() => PikachuTrailerState();
}

class PikachuTrailerState extends State<PikachuTrailer> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/movie.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Pokémon Detective Pikachu",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          elevation: 0,
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
        body: Column(children: <Widget>[
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 10.0,
                  spreadRadius: 6.0)
            ], border: Border.all(width: 4, color: Colors.orange)),
            margin: EdgeInsets.only(top: 40),
            child: _controller.value.initialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),
          Container(
            margin: EdgeInsets.only(top: 27, left: 13, right: 13),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 10.0,
                    spreadRadius: 1.0)
              ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.amberAccent[100],
            ),
            child: Column(
              children: <Widget>[
                SingleChildScrollView(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    '''The story begins when ace detective Harry Goodman goes mysteriously missing, prompting his 21-year-old son Tim to find out what happened. Aiding in the investigation is Harry's former Pokémon partner, Detective Pikachu: a hilariously wise-cracking, adorable super-sleuth who is a puzzlement even to himself. Finding that they are uniquely equipped to communicate with one another, Tim and Pikachu join forces on a thrilling adventure to unravel the tangled mystery. Chasing clues together through the neon-lit streets of Ryme City--a sprawling, modern metropolis where humans and Pokémon live side by side in a hyper-realistic live-action world--they encounter a diverse cast of Pokémon characters and uncover a shocking plot that could destroy this peaceful co-existence and threaten the whole Pokémon universe.''',
                    style: TextStyle(fontSize: 14.8),
                  ),
                )
              ],
            ),
          )
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          onPressed: () {
            setState(() {
              _controller.value.isPlaying ? _controller.pause() : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
