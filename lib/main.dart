import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav'); //the files are named note1.wav and so on
  }

  Widget buildKey(int soundNum, Color color,) { //This function contains the basic layout of the app keys
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNum); //refers to the sound number of the pressed key to play the audio
        },
        child: Text('$color', style: TextStyle(color: Colors.black,),), //color of the color indicator
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),
              buildKey(7, Colors.pinkAccent), //Extra Color I added
            ],
          ),
        ),
      ),
    );
  }
}
