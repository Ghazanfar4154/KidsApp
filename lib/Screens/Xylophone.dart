import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_app/DataStorage/constants.dart';

void playSound(int n) {
  AudioPlayer().play(AssetSource('xylophoneAudios/note$n.wav'));
}

Expanded creatButton(Color color, int s, String name) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(CircleBorder(
              side: BorderSide(
                  color: Colors.black12, style: BorderStyle.solid, width: 5)))),
      onPressed: () {
        playSound(s);
      },
      child: Text(
        name,
        style: bodyNameStyle
            .merge(TextStyle(color: Colors.black, fontFamily: "ComicSansMS3")),
      ),
    ),
  );
}

class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('XyloPhone'),
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(60), bottom: Radius.elliptical(40, 20)),
            color: Colors.brown,
          ),
          margin: EdgeInsets.fromLTRB(20, 100, 45, 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              creatButton(Colors.purple, 1, "C"),
              creatButton(Colors.blue, 2, "D"),
              creatButton(Colors.tealAccent, 3, "E"),
              creatButton(Colors.greenAccent, 4, "F"),
              creatButton(Colors.green, 5, "G"),
              creatButton(Colors.yellow, 6, "A"),
              creatButton(Colors.orangeAccent, 7, "B"),
              creatButton(Colors.redAccent, 1, "C"),
            ],
          ),
        ),
      ),
    );
  }
}
