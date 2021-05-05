import 'package:flutter/material.dart';

class Import extends StatefulWidget {
  @override
  _ImportState createState() => _ImportState();
}

class _ImportState extends State<Import> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Import Screen', style: TextStyle(fontSize:40)),
      ),
    );
  }
}