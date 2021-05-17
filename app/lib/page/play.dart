import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  List _lang = ["Japonais", "Anglais", "Chinois", "Italien"];
  bool playModeSwitched = false;

  List<DropdownMenuItem<String>> _dropDownMenuItems =
  List<DropdownMenuItem<String>>.empty(growable: true);
  late String _currentLang;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentLang = _dropDownMenuItems[0].value!;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items =
    List<DropdownMenuItem<String>>.empty(growable: true);
    for (String lang in _lang) {
      items.add(new DropdownMenuItem(value: lang, child: new Text(lang)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: Column(

          children: [
            Container(padding: EdgeInsets.all(15.0)),
            new Container(
              width: MediaQuery.of(context).size.width - 25,
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), //border corner radius
                boxShadow:[
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

                child: DropdownButtonHideUnderline(
                  child: new DropdownButton(

                    isExpanded: true,
                    items: _dropDownMenuItems,
                    hint: Text("Sélectionnez une langue"),
                    icon: Icon(CupertinoIcons.chevron_down),
                    onChanged: changedDropDownItem,
                  ),
                ),
              ),

            ),Container(padding: EdgeInsets.all(10.0)),
            new Container(
              width: MediaQuery.of(context).size.width - 25,
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), //border corner radius
                boxShadow:[
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

                child: DropdownButtonHideUnderline(
                  child: new DropdownButton(

                    isExpanded: true,
                    items: _dropDownMenuItems,
                    hint: Text("Cochez les listes à jouer"),
                    icon: Icon(CupertinoIcons.chevron_down),
                    onChanged: changedDropDownItem,
                  ),
                ),
              ),
            ),Container(padding: EdgeInsets.all(10.0)),
            new Container(
              width: MediaQuery.of(context).size.width - 25,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), //border corner radius
                boxShadow:[
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
              child: Column(
                children: [
                  Text("Mode de jeu", style: TextStyle(fontSize: 30,), textAlign: TextAlign.center),
                  Container(padding: EdgeInsets.all(10.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text("Temps"),
                      Switch(value: playModeSwitched, onChanged: (value) {
                        setState(() {
                          playModeSwitched = value;
                        });
                      },
                          activeColor: Colors.indigo),
                      Text("Mots")],
                  )
                ],
              ),
            ),
          ],
        ));
  }

  void togglePlayMode(bool playModeSwitched){
    setState(() {
      playModeSwitched = !playModeSwitched;
    });
  }
  void changedDropDownItem(String? selectedCity) {
    setState(() {
      _currentLang = selectedCity!;
    });
  }
}