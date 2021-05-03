import 'package:flutter/material.dart';

class Creer extends StatefulWidget {
  @override
  _CreerState createState() => _CreerState();
}

class _CreerState extends State<Creer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Créer Screen', style: TextStyle(fontSize:40)),
      ),
    );
  }
}