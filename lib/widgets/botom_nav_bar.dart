import 'package:flutter/material.dart';
import 'package:hwss/pages/home.dart';
import 'package:hwss/pages/message.dart';
import 'package:hwss/pages/mine.dart';

class CBottomNavBar extends StatefulWidget {
  List widgets = [
    HomePage(),
    const MessagePage(),
    const MinePage(),
  ];

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
        elevation: 0,
        backgroundColor: Colors.white,
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
      body: widget.widgets[_index],
    );
  }
}
