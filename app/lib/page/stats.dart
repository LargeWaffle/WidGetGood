import 'package:flutter/material.dart';

class Stats extends StatefulWidget {
  @override
  _Stats createState() => _Stats();
}

class _Stats extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Stats Screen', style: TextStyle(fontSize:40)),
      ),
    );
  }
}