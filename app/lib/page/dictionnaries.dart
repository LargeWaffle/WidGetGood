import 'package:flutter/material.dart';

class Dico extends StatefulWidget {
  @override
  _DicoState createState() => _DicoState();
}

class _DicoState extends State<Dico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Dictionnaries')),
        body: Center(
          child: Text('Dictionnaries Screen', style: TextStyle(fontSize:40)),
      ),
    );
  }
}
