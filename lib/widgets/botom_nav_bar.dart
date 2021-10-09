import 'package:flutter/material.dart';

class CBottomNavBar extends StatefulWidget {
  CBottomNavBar({Key? key}) : super(key: key);

  @override
  _CBottomNavBarState createState() => _CBottomNavBarState();
}

class _CBottomNavBarState extends State<CBottomNavBar> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: "首页"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded), label: "消息"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_sharp), label: "我")
        ],
        currentIndex: _index,
        onTap: (v) {
          setState(() {
            _index = v;
          });
        },
      ),
    );
  }
}
