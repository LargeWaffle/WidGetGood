import 'package:app/page/dictionnaries.dart';
import 'package:app/page/play.dart';
import 'package:flutter/material.dart';
import 'package:app/page/stats.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: Text('Dashboard Screen', style: TextStyle(fontSize:40)),
=======
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFF2994A),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Dictionnaries'),
                Tab(text: 'Stats',),
                Tab(text: 'Play'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Dico(),
              Stats(),
              Play()
            ],
          ),
        ),
>>>>>>> Stashed changes
      ),
    );
  }
}