import 'dart:collection';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: XyloPhone(),
    );
  }
}
class XyloPhone extends StatefulWidget {
  @override
  _XyloPhoneState createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  int soundNumber=1;
  void sounds(soundNumber){
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }
  Expanded buildKey({Color color,  soundNumber}){
    return Expanded(
      child: FlatButton(onPressed: (){
        sounds(soundNumber);
      },
        color: color,
        child: Text("click me",
        style: TextStyle(
          // color: Colors.white,
        ),
      ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("my app bar"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color:Colors.blue, soundNumber:1),
            buildKey(color:Colors.red, soundNumber:2),
            buildKey(color:Colors.yellow, soundNumber:3),
            buildKey(color:Colors.orange, soundNumber:4),
            buildKey(color:Colors.blueGrey, soundNumber:5),
            buildKey(color:Colors.teal, soundNumber:6),
            buildKey(color:Colors.blue, soundNumber:7),
          ],
        ),
      ),
    );
  }
}

