import 'package:flutter/material.dart';
import 'package:practice/variableConstants.dart';

class Standard extends StatefulWidget {
  @override
  _StandardState createState() => _StandardState();
}

class _StandardState extends State<Standard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: secondary,
          onPressed: () {},
          child: Icon(Icons.add, color: theme, size: 35)),
    );
  }
}
