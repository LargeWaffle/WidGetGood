import 'package:flutter/cupertino.dart';
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
        child: MyStatelessWidget(),
      ),
    );
  }
}


/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  List languages = [
    "Japonais",
    "Français",
    "Anglais",
    "Espagnol",
    "Allemand",
    "Polonais",
    "Turque",
    "Arabe",
    "Italien",
    "Suisse"
  ];
  List categories = [
    "Nourriture",
    "Objets",
    "Outils",
    "Animaux",
    "Ecole",
    "Famille",
    "Véhicules",
    "Cuisine",
    "Arbres",
    "Plantes"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) =>
            Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color.fromRGBO(9, 44, 76, 1), width: 1),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      width: 55.0,
                                      height: 55.0,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        foregroundColor: Colors.green,
                                        backgroundImage: NetworkImage
                                          (
                                            "https://img-premium.flaticon.com/png/512/197/197604.png?token=exp=1621072087~hmac=914f482645a05843048c3727c93459bc"),
                                      )
                                  ),
                                  SizedBox(width: 10.0),
                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: <Widget>[
                                        Text(languages[index], style: TextStyle(
                                            color: Color.fromRGBO(9, 44, 76, 1),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold)),
                                        SizedBox(height: 5.0),
                                        Text(categories[index],
                                            style: TextStyle(
                                                color: Colors.grey)),
                                      ]
                                  )
                                ]
                            ),
                            Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10.0),
                                child: new Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.edit_outlined),
                                        onPressed: () {},
                                        color: Color.fromRGBO(9, 44, 76, 1)
                                      ),
                                      IconButton(
                                        icon: Icon(
                                            Icons.delete_outline_rounded),
                                        onPressed: () {},
                                        color: Colors.red
                                      )
                                    ]
                                )
                            )
                          ],
                        )
                    )
                )
            ),
      ),
    );
  }
}