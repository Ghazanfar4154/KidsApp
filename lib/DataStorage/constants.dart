import 'dart:math';

import 'package:flutter/material.dart';

List<Color> colorList = [
  Colors.amber,
  Colors.blueAccent,
  Colors.deepOrange,
  Colors.brown,
  Colors.deepPurple,
  Colors.blueGrey,
  Colors.green,
  Colors.tealAccent,
  Colors.yellow,
  Colors.black
];

int colorNumber() {
  int number = Random().nextInt(10);
  return number;
}

TextStyle widgetNameStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 140,
  fontFamily: "ComicSansMS3",
);

TextStyle bodyNameStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

// Printing Random Number between 1 to 100 on Terminal Window.
