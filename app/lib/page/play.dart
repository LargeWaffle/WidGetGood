import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/CustomObjects.dart';

class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {

  List<String> _lang = ["Japonais", "Anglais", "Chinois", "Italien"];

  bool isSwitched = false;
  String switchDisplay = "Combien de temps voulez vous jouer ?";
  double sliderValue = 0;
  String sliderText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
            child: Column(
            children: [
              SpacerContainer(15.0),

              new Container(
                width: MediaQuery.of(context).size.width - 25,
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3), //color of shadow
                      spreadRadius: 0, //spread radius
                      blurRadius: 15, // blur radius// changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomDropdown(
                      itemList: _lang,
                      hintText: "Sélectionnez une langue"
                  ),
                ),
              ),
              SpacerContainer(10.0),

              new Container(
                width: MediaQuery.of(context).size.width - 25,
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3), //color of shadow
                      spreadRadius: 0, //spread radius
                      blurRadius: 15, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomDropdown(
                    itemList: _lang,
                    hintText: "Sélectionnez une catégorie"
                  ),
                ),
              ),
              SpacerContainer(10.0),

              new Container(
                width: MediaQuery.of(context).size.width - 25,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3), //color of shadow
                      spreadRadius: 0, //spread radius
                      blurRadius: 15, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first parameter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Column(
                  children: [
                    Text("Mode de jeu",
                        style: TextStyle(
                            fontSize: 30, color: Color.fromRGBO(9, 44, 76, 1)),
                        textAlign: TextAlign.center),

                    SpacerContainer(10.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Temps",
                            style: TextStyle(
                                fontSize: 24,
                                color: isSwitched
                                    ? Color.fromRGBO(119, 137, 153, 1)
                                    : Color.fromRGBO(9, 44, 76, 1))),
                        Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                togglePlayMode(isSwitched);
                                sliderUpdate(sliderValue);
                              });
                            },
                            activeColor: Colors.indigo),
                        Text("Mots",
                            style: TextStyle(
                                fontSize: 24,
                                color: isSwitched
                                    ? Color.fromRGBO(9, 44, 76, 1)
                                    : Color.fromRGBO(119, 137, 153, 1)))
                      ],
                    ),
                    SpacerContainer(10.0),

                    Text(switchDisplay,
                        style: TextStyle(
                            fontSize: 18, color: Color.fromRGBO(117, 117, 117, 1))),
                    SpacerContainer(10.0),

                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                          trackHeight: 10,
                          thumbColor: const Color.fromRGBO(9, 44, 76, 1),
                          activeTrackColor: const Color.fromRGBO(9, 44, 76, 1)),
                      child: Slider(
                        value: sliderValue,
                        min: 0,
                        max: 50,
                        divisions: 50,
                        onChanged: (double value) {
                          setState(() {
                            sliderValue = value;
                            sliderUpdate(sliderValue);
                          });
                        },
                      ),
                    ),
                    SpacerContainer(10.0),
                    Text(sliderText,
                        style: TextStyle(
                            fontSize: 18, color: Color.fromRGBO(117, 117, 117, 1))),
                  ],
                ),
              ),
            ],
          )
        ),
    );
  }

  void togglePlayMode(bool isSwitched) {
    setState(() {
      if (isSwitched) {
        switchDisplay = "Combien de mots voulez vous ?";
      } else {
        switchDisplay = "Combien de temps voulez vous jouer ?";
      }
    });
  }

  void sliderUpdate(double sliderValue) {
    var addonText = "";

    if (isSwitched) {
      addonText = " mots";
    } else {
      addonText = " minutes";
    }
    sliderText = sliderValue.round().toString() + addonText;
  }
}
