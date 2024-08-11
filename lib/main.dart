import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp(


  ));
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildKey({Color? color, int? soundNumber})
  {
    return Expanded(
      child:  TextButton(
        style:
        TextButton.styleFrom(backgroundColor:color),
        onPressed: () {
          playSound(soundNumber!);

        },
        child:
        Text(' '),
      ),
    );
  }
 // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:
          Center(
            child: Text(
              'XyloBeats: Play Your Way',
            style:TextStyle(
              fontFamily:'SourceCode BlackItalic' ,
              color: Colors.blue
            )
          ),
          )
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color:Colors.red,soundNumber: 1),
              buildKey(color:Colors.deepOrange,soundNumber: 2),
              buildKey(color:Colors.yellow,soundNumber: 3),
              buildKey(color:Colors.lightGreenAccent,soundNumber: 4),
              buildKey(color:Colors.teal,soundNumber: 5),
              buildKey(color:Colors.blue,soundNumber: 6),
              buildKey(color:Colors.deepPurple,soundNumber: 7),

              ],
          ),
        ),
      ),
    );
  }
}
