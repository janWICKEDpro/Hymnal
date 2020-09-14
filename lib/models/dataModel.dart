import 'package:flutter/material.dart';

class HymnSong {
  String title;
  int index;
  int hymnNumber;
  String body;
  HymnSong(
      {@required this.title, @required this.index, @required this.hymnNumber});
}

class ComposedHymn {
  String title;
  int index;
  String body;
  ComposedHymn(
      {@required this.title, @required this.index, @required this.body});
}
