import 'package:flutter/material.dart';

int _index = 0;

Widget bottomNavBar() {
  return BottomNavigationBar(
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
      setState() {
        _index = v;
      }
    },
  );
}
