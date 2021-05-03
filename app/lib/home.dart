import 'package:flutter/material.dart';
import 'page/dashboard.dart';
import 'page/play.dart';
import 'page/dictionnaries.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Play(),
    Dico()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(4, 17, 30, 1),
        child: Icon(
            Icons.play_arrow_rounded,
          size: 40,
          color: Colors.white,
        ),

        onPressed: () {
          setState(() {
            currentScreen = Play();
            currentTab = 1;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Dashboard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_rounded,
                          color: currentTab == 0 ? Color(0xFFF2994A) : Colors.grey,
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                              color: currentTab == 0 ? Color(0xFFF2994A) : Colors.grey
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              // Right Tab Bar Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Dico();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.library_books_rounded,
                          color: currentTab == 2 ? Color(0xFFF2994A) : Colors.grey,
                        ),
                        Text(
                          'Dictionnaries',
                          style: TextStyle(
                              color: currentTab == 2 ? Color(0xFFF2994A) : Colors.grey
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        )
      ),
    );
  }
}