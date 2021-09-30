import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';



void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundPlay(int noteNumber)
  {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }
  Expanded builtKey({Color color,int number}){
    return Expanded(
            child: FlatButton(
            color: color,
                onPressed: (){
            soundPlay(number);}
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body : SafeArea(
                child: Column(
                  //mainAxisAlignment:,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    builtKey(color: Colors.red    , number : 1),
                    builtKey(color: Colors.orange , number : 2),
                    builtKey(color: Colors.yellow , number : 3),
                    builtKey(color: Colors.green[600]  , number : 4),
                    builtKey(color: Colors.blue   , number : 5),
                    builtKey(color: Colors.teal[800]   , number : 6),
                    builtKey(color: Colors.deepPurpleAccent , number : 7),
                  ], // children
                ),
                ),
              ),
    );
  }
}
