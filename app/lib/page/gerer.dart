
import 'package:flutter/material.dart';

class Gerer extends StatefulWidget {
  @override
  _GererState createState() => _GererState();
}

class _GererState extends State<Gerer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Gérer Screen', style: TextStyle(fontSize:40)),
      ),
    );
  }
}