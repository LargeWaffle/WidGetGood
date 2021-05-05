import 'package:app/page/creer.dart';
import 'package:app/page/gerer.dart';
import 'package:app/page/import.dart';
import 'package:flutter/material.dart';

class Dico extends StatefulWidget {
  @override
  _DicoState createState() => _DicoState();
}

class _DicoState extends State<Dico> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFF2994A),
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                Tab(text: 'Importer'),
                Tab(text: 'Gérer'),
                Tab(text: 'Créer')
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
              Import(),
              Gerer(),
              Creer(),
            ],
          ),
        ),
      ),
    );
  }
}