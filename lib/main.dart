import 'package:flutter/material.dart';
import 'BottomNavigationBarWidget.dart';

void main()=>runApp(MyAPP());

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter bottom navigation bar',
      theme: ThemeData.light(),
      home: BottomNavigationBarWidget(),
    );
  }
}
