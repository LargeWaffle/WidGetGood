import 'package:app/page/dash.dart';
import 'package:app/page/stats.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFF2994A),
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                Tab(text: 'Dashboard'),
                Tab(text: 'Stats',),
              ],
            ),
            title: Center(
              child: RichText(
                  text: TextSpan(
                    text:'WidGet',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    children: [
                      TextSpan(
                        text: 'Good',
                        style: TextStyle(
                          color: Color.fromRGBO(4, 17, 30, 1),
                          fontSize: 24,
                        ),
                      ),
                    ],
                  )
              ),
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              Dash(),
              Stats(),
            ],
          ),
        ),
      ),
    );
  }
}