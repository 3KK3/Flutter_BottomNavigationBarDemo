import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/EmailPage.dart';
import 'pages/PagesPage.dart';
import 'pages/AirplayPage.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final kNavColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    // TODO: implement initState
    list..add(HomePage())..add(EmailPage())..add(PagesPage())..add(AirplayPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex]
      ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: kNavColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: kNavColor),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: kNavColor,
              ),
              title: Text(
                'email',
                style: TextStyle(color: kNavColor),
              )
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.pages,
            color: kNavColor,
          ),
          title: Text(
            'pages',
            style: TextStyle(color: kNavColor),
          )
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: kNavColor,
            ),
            title: Text(
              'airplay',
              style: TextStyle(color: kNavColor),
            )
        )
        ],
      ),

    );
  }
}
