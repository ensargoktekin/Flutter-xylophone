import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded createButton({Color color, int soundNum}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNum);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'xylophone',
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                createButton(color: Colors.red, soundNum: 1),
                createButton(color: Colors.orange, soundNum: 2),
                createButton(color: Colors.yellow, soundNum: 3),
                createButton(color: Colors.green, soundNum: 4),
                createButton(color: Colors.teal, soundNum: 5),
                createButton(color: Colors.blue, soundNum: 6),
                createButton(color: Colors.purple, soundNum: 7),
                Container(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  margin: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Click the buttons and have fun!',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
