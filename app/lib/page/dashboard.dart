import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Dashboard Screen', style: TextStyle(fontSize:40)),
      ),
    );
  }
}