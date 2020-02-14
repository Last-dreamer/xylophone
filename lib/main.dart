import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(sounds());

// playing Sounds...
void playSound(int sound,var char){
  final player =  AudioCache();
  player.play('note${sound}_$char.wav');
}

// expanded flatButtons with diff color and sounds.........
Expanded buildKey({Color color,int soundNumber,var char}){
  return Expanded(
     child: FlatButton(
         color: color,
         onPressed: () {
       playSound(soundNumber,char);
     }
      , child: null),
  );
}

class sounds extends StatefulWidget {
  @override
  Msounds createState() => Msounds();
}

class Msounds extends State<sounds> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child:Center(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                buildKey(color: Colors.red,soundNumber: 1,char: 'c'),
                buildKey(color: Colors.orange,soundNumber: 2,char: 'd'),
                buildKey(color: Colors.yellow,soundNumber: 3,char: 'e'),
                buildKey(color: Colors.green,soundNumber: 4,char: 'f'),
                buildKey(color: Colors.teal,soundNumber: 5,char: 'g'),
                buildKey(color: Colors.blue,soundNumber: 6,char: 'a'),
                buildKey(color: Colors.purple,soundNumber: 7,char: 'b'),
              ],
            ),

               ),
        ),
      ),
    );

  }
}

