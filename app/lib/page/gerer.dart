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

  List flags = [
    "241-japan.png",
    "197-france.png",
    "110-united kingdom.png",
    "230-spain.png",
    "208-germany.png",
    "165-poland.png",
    "154-turkey.png",
    "204-saudi arabia.png",
    "263-italy.png",
    "176-switzerland.png"
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
                                        backgroundImage: AssetImage('assets/images/'+flags[index])
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
                                        onPressed: () {
                                          print(index);
                                          languages.removeAt(index);
                                          flags.removeAt(index);
                                          categories.removeAt(index);
                                          print(languages);
                                          Gerer();
                                        },
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