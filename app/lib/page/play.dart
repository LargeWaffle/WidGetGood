import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Play Screen', style: TextStyle(fontSize:40)),
      ),
    );
  }
}
