import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Automation for the dropdown widgets

class CustomDropdown extends StatefulWidget {

  final List<String> itemList;
  final String hintText;

  CustomDropdown({
    required this.itemList,
    required this.hintText,
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {

  late List<DropdownMenuItem<String>> dropdownMenuItemList;
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: dropdownValue,
        isExpanded: true,
        items: dropdownMenuItemList = getDropDownMenuItems(widget.itemList),

        hint: Text("${widget.hintText}"),
        icon: Icon(CupertinoIcons.chevron_down),

        onChanged: changedDropDownItem,
      ),
    );
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems(List<String> itemList) {

    List<DropdownMenuItem<String>> items =
    List<DropdownMenuItem<String>>.empty(growable: true);

    for (String item in itemList) {
      items.add(new DropdownMenuItem(value: item, child: new Text("$item")));
    }
    return items;
  }

  void changedDropDownItem(String? selectedItem) {
    setState(() {
      dropdownValue = selectedItem!;
    });
  }

}

// Useful when spacing Widhets

class SpacerContainer extends StatelessWidget {
  final double insetValue;
  SpacerContainer(this.insetValue);

  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(insetValue));
  }
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar()
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: UniqueKey());

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: RichText(
            text: TextSpan(
          text: 'WidGet',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
          children: [
            TextSpan(
              text: 'Good',
              style: TextStyle(
                color: Color.fromRGBO(4, 17, 30, 1),
                fontSize: 32,
              ),
            ),
          ],
        )),
      ),
      centerTitle: true,
    );
  }
}
